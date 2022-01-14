import 'package:code_builder/code_builder.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/protocol/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

class OperationGenerator extends LibraryGenerator<OperationShape> {
  OperationGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  late final inputShape = shape.inputShape(context);
  late final inputSymbol = shape.inputSymbol(context);
  late final inputPayload = inputShape.httpPayload(context);
  late final outputShape = shape.outputShape(context);
  late final outputSymbol = shape.outputSymbol(context);

  late final Map<SmithyError, Reference> errorSymbols = Map.fromEntries([
    ...?context.service?.errors,
    ...shape.errors,
  ].map((error) {
    final symbol = context.symbolFor(error.target);
    final shape = context.shapeFor(error.target);
    return MapEntry(shape.smithyError, symbol);
  }));

  /// HTTP metadata which can influence code generation.
  late final HttpProtocolTraits? _httpTraits = () {
    final httpTrait = shape.getTrait<HttpTrait>();
    if (httpTrait == null) {
      return null;
    }
    final bldr = HttpProtocolTraitsBuilder();
    bldr.http = httpTrait;
    for (var member in inputShape.members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        bldr.httpHeaders[headerTrait.value] = member;
      }
      if (member.hasTrait<HttpLabelTrait>()) {
        bldr.httpLabels.add(member);
      }
      if (member.hasTrait<HttpPayloadTrait>()) {
        bldr.httpPayload.replace(member);
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        bldr.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
      if (member.hasTrait<HostLabelTrait>()) {
        bldr.hostLabel.replace(member);
      }
      final queryTrait = member.getTrait<HttpQueryTrait>();
      if (queryTrait != null) {
        bldr.httpQuery[queryTrait.value] = member;
      }
      if (member.hasTrait<HttpQueryParamsTrait>()) {
        bldr.httpQueryParams.replace(member);
      }
    }
    for (var member in outputShape.members.values) {
      if (member.hasTrait<HttpResponseCodeTrait>()) {
        bldr.httpResponseCode.replace(member);
      }
    }
    return bldr.build();
  }();

  @override
  String get className => shape.dartName;

  @override
  Library generate() {
    builder.body.add(_operationClass);

    return builder.build();
  }

  /// The operation's implementation class.
  Class get _operationClass => Class(
        (c) => c
          ..docs.addAll([
            if (shape.docs != null) formatDocs(shape.docs!),
          ])
          ..name = className
          ..extend = DartTypes.smithy.httpOperation(
            inputPayload.symbol,
            inputSymbol,
            outputSymbol,
          )
          ..fields.addAll([
            _protocolsGetter,
          ])
          ..methods.addAll([
            ..._httpOverrides(_httpTraits!),
          ]),
      );

  /// The statements of the HTTP request builder.
  Iterable<Code> _httpRequestBuilder(HttpProtocolTraits traits) sync* {
    final builder = refer('b');
    final input = refer('input');

    yield builder
        .property('method')
        .assign(literalString(traits.http.method))
        .statement;
    yield builder
        .property('path')
        .assign(literalString(traits.http.uri))
        .statement;
    yield builder
        .property('successCode')
        .assign(traits.httpResponseCode == null
            ? literalNum(traits.http.code)
            : input.property(traits.httpResponseCode!.dartName))
        .statement;

    for (var entry in traits.httpHeaders.entries) {
      yield _httpHeader(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName),
      );
    }

    if (traits.httpPrefixHeaders != null) {
      yield _httpPrefixedHeaders(traits.httpPrefixHeaders!);
    }

    for (var entry in traits.httpQuery.entries) {
      yield _httpQuery(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName),
      );
    }

    if (traits.httpQueryParams != null) {
      yield _httpQueryParameters(traits.httpQueryParams!);
    }
  }

  /// Adds the header to the request's headers map.
  Code _httpHeader(Expression key, Shape value, Expression valueRef) {
    final builder = refer('b');
    Expression toString(Expression ref, Shape shape) {
      final type = shape.getType();
      switch (type) {
        case ShapeType.boolean:
        case ShapeType.bigDecimal:
        case ShapeType.bigInteger:
        case ShapeType.byte:
        case ShapeType.double:
        case ShapeType.float:
        case ShapeType.integer:
        case ShapeType.long:
        case ShapeType.short:
          return ref.property('toString').call([]);

        // string values with a mediaType trait are always base64 encoded.
        case ShapeType.string:
          return ref;

        // timestamp values are serialized using the http-date format by
        // default. The timestampFormat trait MAY be used to use a custom
        // serialization format.
        case ShapeType.timestamp:
          final format = shape.timestampFormat ?? TimestampFormat.httpDate;
          return ref
              .property('format')
              .call([
                DartTypes.smithy.timestampFormat.property(format.name),
              ])
              .property('toString')
              .call([]);

        // When a list shape is targeted, each member of the shape is
        // serialized as a separate HTTP header either by concatenating the
        // values with a comma on a single line or by serializing each header
        // value on its own line.
        case ShapeType.list:
        case ShapeType.set:
          final Shape memberShape =
              context.shapeFor((shape as CollectionShape).member.target);
          return ref
              .property('map')
              .call([
                Method((m) => m
                  ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                  ..lambda = true
                  ..body = toString(refer('el'), memberShape).code).closure,
              ])
              .property('join')
              .call([literalString(',')]);
        default:
          throw ArgumentError('Invalid header shape type: $type');
      }
    }

    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;

    return builder
        .property('headers')
        .index(key)
        .assign(toString(
          valueRef,
          targetShape,
        ))
        .statement;
  }

  /// Adds the prefixed headers to the request's headers map.
  Code _httpPrefixedHeaders(HttpPrefixHeaders headers) {
    final mapShape = context.shapeFor(headers.member.target) as MapShape;
    final valueTarget = context.shapeFor(mapShape.value.target);
    return Block.of([
      Code('for (var entry in input.${headers.member.dartName}) {'),
      _httpHeader(
        literalString(headers.trait.value)
            .operatorAdd(refer('entry').property('key')),
        valueTarget,
        refer('entry').property('value'),
      ),
      Code('}'),
    ]);
  }

  /// Adds the shape to the request's query parameters.
  Code _httpQuery(
    Expression key,
    Shape value,
    Expression valueRef,
  ) {
    final builder = refer('b');

    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;
    if (targetShape is CollectionShape) {
      value as MemberShape;
      return Block.of([
        Code('for (var value in input.${value.dartName}) {'),
        _httpQuery(key, targetShape.member, refer('value')),
        Code('}'),
      ]);
    }

    Expression toString(Expression ref, ShapeType type) {
      switch (type) {
        case ShapeType.boolean:
        case ShapeType.bigDecimal:
        case ShapeType.bigInteger:
        case ShapeType.byte:
        case ShapeType.double:
        case ShapeType.float:
        case ShapeType.integer:
        case ShapeType.long:
        case ShapeType.short:
          return ref.property('toString').call([]);

        // string values with a mediaType trait are always base64 encoded.
        case ShapeType.string:
          return ref;

        // timestamp values are serialized as an RFC 3339 date-time string by
        // default (for example, 1985-04-12T23:20:50.52Z, and with
        // percent-encoding, 1985-04-12T23%3A20%3A50.52Z). The timestampFormat
        // trait MAY be used to use a custom serialization format.
        case ShapeType.timestamp:
          final format = shape.timestampFormat ?? TimestampFormat.dateTime;
          return ref
              .property('format')
              .call([
                DartTypes.smithy.timestampFormat.property(format.name),
              ])
              .property('toString')
              .call([]);

        default:
          throw ArgumentError('Invalid query parameter value type: $type');
      }
    }

    return builder.property('queryParameters').property('add').call([
      key,
      toString(valueRef, targetShape.getType()),
    ]).statement;
  }

  /// Adds all query parameters in a map to the request's query parameters.
  Code _httpQueryParameters(MemberShape queryParameters) {
    final targetShape = context.shapeFor(queryParameters.target) as MapShape;
    final valueShape = context.shapeFor(targetShape.value.target);
    return Block.of([
      Code('for (var entry in input.${queryParameters.dartName}) {'),
      _httpQuery(
        refer('entry').property('key'),
        valueShape,
        refer('entry').property('value'),
      ),
      Code('}'),
    ]);
  }

  /// The required HTTP operation overrides.
  Iterable<Method> _httpOverrides(HttpProtocolTraits traits) sync* {
    // The `buildRequest` method
    final request = DartTypes.smithy.httpRequest.newInstance([
      Method(
        (m) => m
          ..requiredParameters.add(Parameter((p) => p..name = 'b'))
          ..lambda = false
          ..body = Block.of(_httpRequestBuilder(traits)),
      ).closure,
    ]);
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.smithy.httpRequest
        ..name = 'buildRequest'
        ..requiredParameters.add(Parameter((p) => p
          ..name = 'input'
          ..type = inputSymbol))
        ..body = request.code,
    );

    // The `labelFor` method
    if (traits.httpLabels.isNotEmpty) {
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.string
          ..name = 'labelFor'
          ..requiredParameters.add(Parameter((p) => p
            ..type = DartTypes.core.string
            ..name = 'key'))
          ..body = literalMap({
            for (var label in traits.httpLabels)
              literalString(label.memberName):
                  refer(label.dartName).property('toString').call([]),
          })
              .index(refer('key'))
              .ifNullThen(
                  refer('super').property('labelFor').call([refer('key')]))
              .code,
      );
    }

    // The `errorTypes` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.list(DartTypes.smithy.smithyError)
        ..type = MethodType.getter
        ..name = 'errorTypes'
        ..lambda = true
        ..body = literalConstList([
          for (var error in errorSymbols.entries)
            DartTypes.smithy.smithyError.constInstance([
              DartTypes.smithy.errorKind.property(error.key.kind.name),
              error.value,
            ], {
              if (error.key.statusCode != null)
                'statusCode': literalNum(error.key.statusCode!),
              if (error.key.retryConfig != null)
                'retryConfig': DartTypes.smithy.retryConfig.constInstance([], {
                  'isThrottlingError':
                      literalBool(error.key.retryConfig!.isThrottlingError),
                })
            })
        ]).code,
    );
  }

  /// The `protocols` override getter.
  Field get _protocolsGetter => Field(
        (f) => f
          ..annotations.add(DartTypes.core.override)
          ..late = true
          ..modifier = FieldModifier.final$
          ..type = DartTypes.core.list(
            DartTypes.smithy.httpProtocol(
              inputPayload.symbol,
              inputSymbol,
              outputSymbol,
            ),
          )
          ..name = 'protocols'
          ..assignment = literalList([
            for (var protocol in context.serviceProtocols)
              protocol.instantiableProtocolSymbol.newInstance([], {
                'serializers': context.serializersRef,
                'builderFactories': context.builderFactoriesRef,
                'interceptors': literalList([]),
              }),
          ]).code,
      );
}
