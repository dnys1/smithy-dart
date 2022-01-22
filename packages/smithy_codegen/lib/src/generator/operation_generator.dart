import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:fixnum/fixnum.dart';
import 'package:http/http.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class OperationGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  @override
  String get className => shape.dartName;

  @override
  Library generate() {
    if (httpTrait != null) {
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
            inputPayload.symbol.unboxed,
            inputSymbol,
            outputPayload.symbol.unboxed,
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
        .assign(literalString(httpTrait!.method))
        .statement;
    yield builder
        .property('path')
        .assign(literalString(httpTrait!.uri))
        .statement;
    yield builder
        .property('successCode')
        .assign(literalNum(httpTrait!.code))
        .statement;

    final hostPrefix = shape.getTrait<EndpointTrait>()?.hostPrefix;
    if (hostPrefix != null) {
      yield builder
          .property('hostPrefix')
          .assign(literalString(hostPrefix))
          .statement;
    }

    for (var entry in httpInputTraits.httpHeaders.entries) {
      yield _inputHttpHeader(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName),
        isNullable: entry.value.isNullable(inputShape),
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
        isNullable: entry.value.isNullable(inputShape),
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

    final payloadShape = outputShape.payloadShape(context);

    // Adds a shape from the payload to the output.
    Code _putShape(MemberShape member, Expression payloadProp) {
      final targetShapeType = context.shapeFor(member.target).getType();
      final isNestedBuilder = [
        ShapeType.map,
        ShapeType.list,
        ShapeType.set,
        ShapeType.structure
      ].contains(targetShapeType);
      if (isNestedBuilder) {
        final isNullable = shape.isNullable(outputShape);
        return builder
            .property(member.dartName)
            .property('replace')
            .call([
              isNullable && member != payloadShape
                  ? payloadProp.nullChecked
                  : payloadProp
            ])
            .statement
            .wrapWithBlockIf(payloadProp.notEqualTo(literalNull), isNullable);
      } else {
        return builder.property(member.dartName).assign(payloadProp).statement;
      }
    }

    // Add all payload members to the output.
    if (payloadShape != null) {
      yield _putShape(payloadShape, payload);
    } else if (outputShape.hasBuiltPayload(context)) {
      for (final member in outputShape.payloadMembers(context)) {
        final payloadProp = payload.property(member.dartName);
        yield _putShape(member, payloadProp);
      }
    }

    // Add HTTP headers to the output.
    final headersRef = response.property('headers');
    for (final entry in httpOutputTraits.httpHeaders.entries) {
      yield _outputHttpHeader(
        headersRef.index(literalString(entry.key)),
        entry.value,
        builder.property(entry.value.dartName),
        isNullable: entry.value.isNullable(outputShape),
      );
    }

    // Add all HTTP headers with a certain prefix to the output.
    final prefixHeaders = httpOutputTraits.httpPrefixHeaders;
    if (prefixHeaders != null) {
      yield builder
          .property(prefixHeaders.member.dartName)
          .property('addEntries')
          .call([
        prefixHeaders.trait.value == ''
            ? headersRef.property('entries')
            : headersRef
                .property('entries')
                .property('where')
                .call([
                  Method((m) => m
                    ..requiredParameters.add(Parameter((p) => p.name = 'el'))
                    ..lambda = true
                    ..body = refer('el')
                        .property('key')
                        .property('startsWith')
                        .call([
                      literalString(prefixHeaders.trait.value)
                    ]).code).closure
                ])
                .property('map')
                .call([
                  Method(
                    (m) => m
                      ..requiredParameters.add(Parameter((p) => p.name = 'el'))
                      ..lambda = true
                      ..body = DartTypes.core.mapEntry.newInstance([
                        refer('el')
                            .property('key')
                            .property('replaceFirst')
                            .call([
                          literalString(prefixHeaders.trait.value),
                          literalString(''),
                        ]),
                        refer('el').property('value'),
                      ]).code,
                  ).closure,
                ])
      ]).statement;
    }

    // Add the HTTP status code to the output.
    final statusCode = httpOutputTraits.httpResponseCode;
    if (statusCode != null) {
      yield builder
          .property(statusCode.dartName)
          .assign(response.property('statusCode'))
          .statement;
    }
  }

  /// Adds the header to the request's headers map.
  Code _inputHttpHeader(
    Expression key,
    Shape value,
    Expression valueRef, {
    required bool isNullable,
  }) {
    final builder = refer('b');
    Expression toString(Expression ref, Shape shape) {
      final targetShape =
          shape is MemberShape ? context.shapeFor(shape.target) : shape;
      final type = targetShape.getType();
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
          if (targetShape.isEnum) {
            return ref.property('value');
          }
          final mediaType = targetShape.getTrait<MediaTypeTrait>()?.value;
          switch (mediaType) {
            case 'application/json':
              return DartTypes.convert.jsonEncode.call([ref.property('value')]);
          }
          return ref;

        // timestamp values are serialized using the http-date format by
        // default. The timestampFormat trait MAY be used to use a custom
        // serialization format.
        case ShapeType.timestamp:
          final format = shape.timestampFormat ??
              targetShape.timestampFormat ??
              TimestampFormat.httpDate;
          return DartTypes.smithy.timestamp
              .newInstance([ref])
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
          final memberShape = (targetShape as CollectionShape).member;
          return ref
              .property('map')
              .call([
                Method((m) => m
                  ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                  ..lambda = true
                  ..body = toString(refer('el'), memberShape).code).closure,
              ])
              .property('join')
              .call([literalString(', ')]);
        default:
          throw ArgumentError('Invalid header shape type: $type');
      }
    }

    var toStringExp = toString(
      (isNullable ? valueRef.nullChecked : valueRef),
      value,
    );
    final addHeader =
        builder.property('headers').index(key).assign(toStringExp).statement;
    return addHeader.wrapWithBlockIf(
      valueRef.notEqualTo(literalNull),
      isNullable,
    );
  }

  /// Adds the prefixed headers to the request's headers map.
  Code _httpPrefixedHeaders(HttpPrefixHeaders headers) {
    final mapShape = context.shapeFor(headers.member.target) as MapShape;
    final mapRef = refer('input').property(headers.member.dartName);
    final isNullableMap = headers.member.isNullable(inputShape);
    final valueTarget = context.shapeFor(mapShape.value.target);
    return Block.of([
      const Code('for (var entry in '),
      (isNullableMap ? mapRef.nullChecked : mapRef)
          .property('toMap')
          .call([])
          .property('entries')
          .code,
      const Code(') {'),
      _inputHttpHeader(
        literalString(headers.trait.value)
            .operatorAdd(refer('entry').property('key')),
        valueTarget,
        refer('entry').property('value'),
        isNullable: valueTarget.isNullable(mapShape),
      ),
      const Code('}'),
    ]).wrapWithBlockIf(mapRef.notEqualTo(literalNull), isNullableMap);
  }

  /// Adds the header to the request's headers map.
  Code _outputHttpHeader(
    Expression headerRef,
    Shape value,
    Expression valueRef, {
    required bool isNullable,
  }) {
    // Creates the expression to parse the header into the type of `shape`.
    Expression fromString(Expression headerRef, Shape shape) {
      final targetShape =
          shape is MemberShape ? context.shapeFor(shape.target) : shape;

      final type = targetShape.getType();
      switch (type) {
        case ShapeType.boolean:
          return headerRef.equalTo(literalString('true'));

        case ShapeType.bigInteger:
          return DartTypes.core.bigInt.property('parse').call([headerRef]);

        case ShapeType.bigDecimal:
        case ShapeType.double:
        case ShapeType.float:
          return DartTypes.core.double.property('parse').call([headerRef]);

        case ShapeType.byte:
        case ShapeType.integer:
        case ShapeType.short:
          return DartTypes.core.int.property('parse').call([headerRef]);

        case ShapeType.long:
          return DartTypes.fixNum.int64.property('parseInt').call([headerRef]);

        // string values with a mediaType trait are always base64 encoded.
        case ShapeType.string:
          if (targetShape.isEnum) {
            final targetSymbol = context.symbolFor(targetShape.shapeId).unboxed;
            return targetSymbol
                .property('values')
                .property('byValue')
                .call([headerRef]);
          }
          final mediaType = targetShape.getTrait<MediaTypeTrait>()?.value;
          switch (mediaType) {
            case 'application/json':
              return DartTypes.builtValue.jsonObject.newInstance([
                DartTypes.convert.jsonDecode.call([headerRef]),
              ]);
          }
          return headerRef;

        // timestamp values are serialized using the http-date format by
        // default. The timestampFormat trait MAY be used to use a custom
        // serialization format.
        case ShapeType.timestamp:
          final format = shape.timestampFormat ??
              targetShape.timestampFormat ??
              TimestampFormat.httpDate;
          return DartTypes.smithy.timestamp.property('parse').call([
            format == TimestampFormat.epochSeconds
                ? DartTypes.core.int.property('parse').call([headerRef])
                : headerRef
          ], {
            'format': DartTypes.smithy.timestampFormat.property(format.name),
          }).property('asDateTime');

        // When a list shape is targeted, each member of the shape is
        // serialized as a separate HTTP header either by concatenating the
        // values with a comma on a single line or by serializing each header
        // value on its own line.
        case ShapeType.list:
        case ShapeType.set:
          final memberShape = (targetShape as CollectionShape).member;
          return headerRef
              .property('split')
              .call([literalString(',')])
              .property('map')
              .call([
                Method((m) => m
                  ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                  ..lambda = true
                  ..body = fromString(
                          refer('el').property('trim').call([]), memberShape)
                      .code).closure,
              ]);
        default:
          throw ArgumentError('Invalid header shape type: $type');
      }
    }

    final fromStringExp = fromString(
      (isNullable ? headerRef.nullChecked : headerRef),
      value,
    );
    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;
    Code addHeader;
    if (targetShape is CollectionShape) {
      addHeader = valueRef.property('addAll').call([fromStringExp]).statement;
    } else {
      addHeader = valueRef.assign(fromStringExp).statement;
    }
    return addHeader.wrapWithBlockIf(
      headerRef.notEqualTo(literalNull),
      isNullable,
    );
  }

  /// Adds the shape to the request's query parameters.
  Code _httpQuery(
    Expression key,
    Shape value,
    Expression valueRef, {
    required bool isNullable,
  }) {
    final builder = refer('b');

    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;
    if (targetShape is CollectionShape) {
      final isNullableMember = targetShape.member.isNullable(targetShape);
      Expression memberRef = refer('value');
      if (isNullableMember) {
        memberRef = memberRef.nullChecked;
      }
      return Block.of([
        const Code('for (var value in '),
        (isNullable ? valueRef.nullChecked : valueRef).code,
        const Code(') {'),
        _httpQuery(
          key,
          targetShape.member,
          memberRef,
          isNullable: isNullableMember,
        ),
        Code('}'),
      ]).wrapWithBlockIf(valueRef.notEqualTo(literalNull), isNullable);
    }

    Expression toString(Expression ref, Shape shape) {
      final targetShape =
          shape is MemberShape ? context.shapeFor(shape.target) : shape;
      final type = targetShape.getType();
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
          if (targetShape.isEnum) {
            return ref.property('value');
          }
          final mediaType = targetShape.getTrait<MediaTypeTrait>()?.value;
          switch (mediaType) {
            case 'application/json':
              return DartTypes.convert.jsonEncode.call([ref.property('value')]);
          }
          return ref;

        // timestamp values are serialized as an RFC 3339 date-time string by
        // default (for example, 1985-04-12T23:20:50.52Z, and with
        // percent-encoding, 1985-04-12T23%3A20%3A50.52Z). The timestampFormat
        // trait MAY be used to use a custom serialization format.
        case ShapeType.timestamp:
          final format = shape.timestampFormat ??
              targetShape.timestampFormat ??
              TimestampFormat.dateTime;
          return DartTypes.smithy.timestamp
              .newInstance([ref])
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

    final toStringExp =
        toString((isNullable ? valueRef.nullChecked : valueRef), targetShape);
    final addParam = builder
        .property('queryParameters')
        .property('add')
        .call([key, toStringExp]).statement;
    return addParam.wrapWithBlockIf(
      valueRef.notEqualTo(literalNull),
      isNullable,
    );
  }

  /// Adds all query parameters in a map to the request's query parameters.
  Code _httpQueryParameters(MemberShape queryParameters) {
    final targetShape = context.shapeFor(queryParameters.target) as MapShape;
    final valueShape = context.shapeFor(targetShape.value.target);
    final isNullable = queryParameters.isNullable(inputShape);
    final mapRef = refer('input').property(queryParameters.dartName);
    var entriesRef = mapRef;
    if (isNullable) {
      entriesRef = entriesRef.nullChecked;
    }
    entriesRef = entriesRef.property('toMap').call([]).property('entries');
    var valueRef = refer('entry').property('value');
    if (valueShape.isNullable(targetShape)) {
      valueRef = valueRef.nullChecked;
    }
    return Block.of([
      const Code('for (var entry in '),
      entriesRef.code,
      const Code(') {'),
      _httpQuery(
        refer('entry').property('key'),
        valueShape,
        valueRef,
        isNullable: valueShape.isNullable(targetShape),
      ),
      Code('}'),
    ]).wrapWithBlockIf(mapRef.notEqualTo(literalNull), isNullable);
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
            ..type = DartTypes.awsCommon.awsStreamedHttpResponse),
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
              error.shapeId.constructed,
              DartTypes.smithy.errorKind.property(error.kind.name),
              error.symbol,
            ], {
              if (error.statusCode != null)
                'statusCode': literalNum(error.statusCode!),
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
              inputPayload.symbol.unboxed,
              inputSymbol,
              outputPayload.symbol.unboxed,
              outputSymbol,
            ),
          )
          ..name = 'protocols'
          ..assignment = literalList([
            for (var protocol in context.serviceProtocols)
              protocol.instantiableProtocolSymbol.newInstance([], {
                'serializers': _protocolSerializers(protocol),
                'builderFactories': context.builderFactoriesRef,
                'interceptors': literalList(_protocolInterceptors(protocol)),
                ...?_protocolParameters(protocol),
              }),
          ]).code,
      );

  Expression _protocolSerializers(ProtocolDefinitionTrait protocol) {
    final additionalSerializers = <Expression>[];
    if (protocol.traits.contains(HttpPayloadTrait.id)) {
      final payloadMember = inputPayload.member;
      final targetShape =
          payloadMember != null ? context.shapeFor(payloadMember.target) : null;
      if (targetShape != null && targetShape is BlobShape) {
        final mediaType = (payloadMember!.getTrait<MediaTypeTrait>() ??
                targetShape.getTrait<MediaTypeTrait>())
            ?.value;
        if (mediaType != null) {
          additionalSerializers
              .add(DartTypes.smithy.blobSerializer.constInstance([
            literalString(mediaType),
          ]));
        }
      }
    }
    return additionalSerializers.isNotEmpty
        ? literalConstList([
            context.serializersRef.spread,
            ...additionalSerializers,
          ])
        : context.serializersRef;
  }

  /// Interceptors for the protocol.
  Iterable<Expression> _protocolInterceptors(
      ProtocolDefinitionTrait protocol) sync* {
    // HTTP checksum (supported by all)
    if (shape.hasTrait<HttpChecksumRequiredTrait>()) {
      yield DartTypes.smithy.withChecksum.constInstance([]);
    }

    switch (protocol.runtimeType) {
      case AwsJson1_0Trait:
      case AwsJson1_1Trait:
        yield DartTypes.smithy.withHeader.constInstance([
          literalString('X-Amz-Target'),

          // The value of this header is the shape name of the service's Shape
          // ID joined to the shape name of the operation's Shape ID,
          // separated by a single period (.) character.
          //
          // For example, the value for the operation `ns.example#MyOp` of the
          // service `ns.example#MyService` is MyService.MyOp.
          literalString([
            context.service!.shapeId.shape,
            shape.shapeId.shape,
          ].join('.'))
        ]);
        break;
      case RestJson1Trait:
      case RestXmlTrait:
      default:
    }
  }

  Map<String, Expression>? _protocolParameters(
      ProtocolDefinitionTrait protocol) {
    switch (protocol.runtimeType) {
      case RestJson1Trait:
        String? mediaType;
        final payloadShape = inputPayload.member;
        if (payloadShape != null) {
          final targetShape = context.shapeFor(payloadShape.target);
          mediaType = (payloadShape.getTrait<MediaTypeTrait>() ??
                  targetShape.getTrait<MediaTypeTrait>())
              ?.value;
        }
        return {
          if (mediaType != null) 'mediaType': literalString(mediaType),
        };
    }
  }
}
