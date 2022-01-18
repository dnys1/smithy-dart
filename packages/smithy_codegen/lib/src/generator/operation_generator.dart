import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/protocol/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

class OperationGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  @override
  String get className => shape.dartName;

  @override
  Library generate() {
    // Only generate HTTP operations currently
    if (shape.hasTrait<HttpTrait>()) {
      builder.body.add(_operationClass);
    }

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
            outputPayload.symbol,
            outputSymbol,
          )
          ..fields.addAll([
            _protocolsGetter,
          ])
          ..methods.addAll([
            ..._httpOverrides,
          ]),
      );

  /// The statements of the HTTP request builder.
  Iterable<Code> get _httpRequestBuilder sync* {
    final builder = refer('b');
    final input = refer('input');

    yield builder
        .property('method')
        .assign(literalString(httpTrait.method))
        .statement;
    yield builder
        .property('path')
        .assign(literalString(httpTrait.uri))
        .statement;
    yield builder
        .property('successCode')
        .assign(httpOutputTraits.httpResponseCode == null
            ? literalNum(httpTrait.code)
            : input.property(httpOutputTraits.httpResponseCode!.dartName))
        .statement;

    final hostPrefix = shape.getTrait<EndpointTrait>()?.hostPrefix;
    if (hostPrefix != null) {
      yield builder
          .property('hostPrefix')
          .assign(literalString(hostPrefix))
          .statement;
    }

    for (var entry in httpInputTraits.httpHeaders.entries) {
      yield _httpHeader(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName),
      );
    }

    if (httpInputTraits.httpPrefixHeaders != null) {
      yield _httpPrefixedHeaders(httpInputTraits.httpPrefixHeaders!);
    }

    for (var entry in httpInputTraits.httpQuery.entries) {
      yield _httpQuery(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName),
      );
    }

    if (httpInputTraits.httpQueryParams != null) {
      yield _httpQueryParameters(httpInputTraits.httpQueryParams!);
    }
  }

  /// The statements of the output builder.
  Iterable<Code> get _outputBuilder sync* {
    final builder = refer('b');
    final payload = refer('payload');
    final response = refer('response');

    // Add all payload members
    final payloadShape = outputShape.payloadShape(context);
    if (outputShape.hasBuiltPayload(context)) {
      for (final member in outputShape.serializableMembers(context)) {
        yield builder
            .property(member.dartName)
            .assign(payload.property(member.dartName))
            .statement;
      }
    } else if (payloadShape != null) {
      yield builder.property(payloadShape.dartName).assign(payload).statement;
    }

    // TODO: Add HTTP metadata
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
    final isBoxed = targetShape.isNullable(inputShape);
    var toStringExp = toString(
      valueRef,
      targetShape,
    );
    if (isBoxed) {
      toStringExp = toStringExp.nullChecked;
    }
    final addHeader =
        builder.property('headers').index(key).assign(toStringExp).statement;
    if (isBoxed) {
      return Block.of([
        const Code('if ('),
        valueRef.notEqualTo(literalNull).code,
        const Code(') {'),
        addHeader,
        const Code('}'),
      ]);
    }
    return addHeader;
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

    final isBoxed = targetShape.isNullable(inputShape);
    var toStringExp = toString(valueRef, targetShape.getType());
    if (isBoxed) {
      toStringExp = toStringExp.nullChecked;
    }
    final addParam = builder
        .property('queryParameters')
        .property('add')
        .call([key, toStringExp]).statement;
    if (isBoxed) {
      return Block.of([
        const Code('if ('),
        valueRef.notEqualTo(literalNull).code,
        const Code(') {'),
        addParam,
        const Code('}'),
      ]);
    }
    return addParam;
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
  Iterable<Method> get _httpOverrides sync* {
    // The `buildRequest` method
    final request = DartTypes.smithy.httpRequest.newInstance([
      Method(
        (m) => m
          ..requiredParameters.add(Parameter((p) => p..name = 'b'))
          ..lambda = false
          ..body = Block.of(_httpRequestBuilder),
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

    // The `buildOutput` method
    final output = outputPayload.symbol == DartTypes.smithy.unit
        ? refer('payload')
        : outputSymbol.newInstance([
            if (outputShape.members.isNotEmpty)
              Method(
                (m) => m
                  ..requiredParameters.add(Parameter((p) => p..name = 'b'))
                  ..lambda = false
                  ..body = Block.of(_outputBuilder),
              ).closure,
          ]);
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = outputSymbol
        ..name = 'buildOutput'
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..name = 'payload'
            ..type = outputPayload.symbol),
          Parameter((p) => p
            ..name = 'response'
            ..type = DartTypes.smithy.httpResponse),
        ])
        ..body = output.code,
    );

    // The `errorTypes` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.list(DartTypes.smithy.smithyError)
        ..type = MethodType.getter
        ..name = 'errorTypes'
        ..lambda = true
        ..body = literalConstList([
          for (var error in errorSymbols)
            DartTypes.smithy.smithyError.constInstance([
              DartTypes.smithy.errorKind.property(error.kind.name),
              error.symbol,
            ], {
              'statusCode': literalNum(error.statusCode),
              if (error.retryConfig != null)
                'retryConfig': DartTypes.smithy.retryConfig.constInstance([], {
                  'isThrottlingError':
                      literalBool(error.retryConfig!.isThrottlingError),
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
              outputPayload.symbol,
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
