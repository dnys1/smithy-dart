import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class OperationGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationGenerator(
    OperationShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(shape, context: context, smithyLibrary: smithyLibrary);

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
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..name = className
          ..extend = paginatedTraits == null
              ? DartTypes.smithy.httpOperation(
                  inputPayload.symbol.unboxed,
                  inputSymbol,
                  outputPayload.symbol.unboxed,
                  outputSymbol,
                )
              : DartTypes.smithy.paginatedHttpOperation(
                  inputPayload.symbol.unboxed,
                  inputSymbol,
                  outputPayload.symbol.unboxed,
                  outputSymbol,
                  paginatedTraits!.inputToken?.symbol.unboxed ??
                      DartTypes.core.void$,
                  paginatedTraits!.pageSize?.symbol.unboxed ??
                      DartTypes.core.void$,
                  paginatedTraits!.items?.symbol.unboxed ??
                      DartTypes.core.void$,
                )
          ..constructors.add(_constructor)
          ..fields.addAll([
            _protocolsGetter,
            ..._httpOverrides.whereType<Field>(),
            ...shape.protocolFields(context),
          ])
          ..methods.addAll([
            ..._httpOverrides.whereType<Method>(),
            ..._paginatedMethods,
          ]),
      );

  Constructor get _constructor => Constructor(
        (ctor) => ctor
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..optionalParameters.addAll(shape.constructorParameters(context))
          ..initializers.addAll(shape.constructorInitializers(context).map(
                (tuple) => refer(tuple.item1).assign(refer(tuple.item2)).code,
              )),
      );

  /// The statements of the HTTP request builder.
  Iterable<Code> get _httpRequestBuilder sync* {
    final builder = refer('b');
    final input = refer('input');

    yield builder
        .property('method')
        .assign(literalString(httpTrait!.method))
        .statement;

    final uri = httpTrait!.uri;
    // S3 requires special treatment of the path
    // https://awslabs.github.io/smithy/1.0/spec/aws/customizations/s3-customizations.html
    final isS3 = context.service?.resolvedService?.sdkId == 'S3';
    if (isS3 && uri.contains(RegExp('^/{Bucket}'))) {
      yield builder
          .property('path')
          .assign(refer('s3ClientConfig').property('usePathStyle').conditional(
                // `raw` because some AWS paths use the '$' char.
                literalString(uri, raw: true),

                // Change `/{Bucket}/{Key+}?param` to `/{Key+}?param` and
                // `/{Bucket}` to `/`
                literalString(
                  uri.replaceFirst(RegExp('^/{Bucket}/?'), '/'),
                  raw: true,
                ),
              ))
          .statement;
    } else {
      yield builder
          .property('path')

          // `raw` because some AWS paths use the '$' char.
          .assign(literalString(uri, raw: true))
          .statement;
    }

    final hostPrefix = shape.getTrait<EndpointTrait>()?.hostPrefix;
    if (isS3 && uri.contains(RegExp('^/{Bucket}'))) {
      yield builder
          .property('hostPrefix')
          .assign(
            refer('s3ClientConfig').property('usePathStyle').conditional(
                  literal(hostPrefix),
                  literalString('{Bucket}.' + (hostPrefix ?? '')),
                ),
          )
          .statement;
    } else if (hostPrefix != null) {
      yield builder
          .property('hostPrefix')
          .assign(literalString(hostPrefix))
          .statement;
    }

    for (var entry in httpInputTraits.httpHeaders.entries) {
      yield _inputHttpHeader(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName(ShapeType.structure)),
        isNullable: entry.value.isNullable(context, inputShape),
      );
    }

    if (httpInputTraits.httpPrefixHeaders != null) {
      yield _httpPrefixedHeaders(httpInputTraits.httpPrefixHeaders!);
    }

    for (var entry in httpInputTraits.httpQuery.entries) {
      yield _httpQuery(
        literalString(entry.key),
        entry.value,
        input.property(entry.value.dartName(ShapeType.structure)),
        isNullable: entry.value.isNullable(context, inputShape),
      );
    }

    if (httpInputTraits.httpQueryParams != null) {
      yield _httpQueryParameters(httpInputTraits.httpQueryParams!);
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
          // From the restJson1 test suite:
          // "Headers that target strings with a mediaType are base64 encoded"
          if (mediaType != null) {
            switch (mediaType) {
              case 'application/json':
                ref = DartTypes.convert.jsonEncode.call([
                  ref.property('value'),
                ]);
                break;
            }
            return DartTypes.convert.base64Encode.call([
              DartTypes.convert.utf8.property('encode').call([ref]),
            ]);
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
          final memberTarget = context.shapeFor(memberShape.target);
          return ref
              .property('map')
              .call([
                Method((m) => m
                  ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                  ..lambda = true
                  ..body = DartTypes.smithy.sanitizeHeader.call([
                    toString(refer('el'), memberShape),
                  ], {
                    if (memberTarget is TimestampShape)
                      'isTimestampList': literalTrue,
                  }).code).closure,
              ])
              .property('join')
              .call([literalString(', ')]);
        default:
          throw ArgumentError('Invalid header shape type: $type');
      }
    }

    final toStringExp = toString(
      (isNullable ? valueRef.nullChecked : valueRef),
      value,
    );
    final addHeader =
        builder.property('headers').index(key).assign(toStringExp).statement;
    final targetShape =
        value is MemberShape ? context.shapeFor(value.target) : value;
    return addHeader
        // From restJson1 test suite:
        // "Do not send null values, empty strings, or empty lists over the wire in headers"
        .wrapWithBlockIf(
            (isNullable ? valueRef.nullChecked : valueRef)
                .property('isNotEmpty'),
            const [ShapeType.list, ShapeType.set, ShapeType.string]
                    .contains(targetShape.getType()) &&
                !targetShape.hasTrait<MediaTypeTrait>() &&
                !targetShape.isEnum)
        .wrapWithBlockIf(
          valueRef.notEqualTo(literalNull),
          isNullable,
        );
  }

  /// Adds the prefixed headers to the request's headers map.
  Code _httpPrefixedHeaders(HttpPrefixHeaders headers) {
    final mapShape = context.shapeFor(headers.member.target) as MapShape;
    final mapRef =
        refer('input').property(headers.member.dartName(ShapeType.structure));
    final isNullableMap = headers.member.isNullable(context, inputShape);
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
        isNullable: valueTarget.isNullable(context, mapShape),
      ),
      const Code('}'),
    ]).wrapWithBlockIf(mapRef.notEqualTo(literalNull), isNullableMap);
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
      final isNullableMember =
          targetShape.member.isNullable(context, targetShape);
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
    final isNullable = queryParameters.isNullable(context, inputShape);
    final mapRef =
        refer('input').property(queryParameters.dartName(ShapeType.structure));
    var entriesRef = mapRef;
    if (isNullable) {
      entriesRef = entriesRef.nullChecked;
    }
    entriesRef = entriesRef.property('toMap').call([]).property('entries');
    final valueRef = refer('entry').property('value');
    return Block.of([
      const Code('for (var entry in '),
      entriesRef.code,
      const Code(') {'),
      _httpQuery(
        refer('entry').property('key'),
        valueShape,
        valueRef,
        isNullable: valueShape.isNullable(context, targetShape),
      ),
      Code('}'),
    ]).wrapWithBlockIf(mapRef.notEqualTo(literalNull), isNullable);
  }

  /// The required HTTP operation overrides.
  Iterable<Spec> get _httpOverrides sync* {
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

    // The `successCode` method
    var successCode = literalNum(200);
    final responseCodeMember = httpOutputTraits.httpResponseCode;
    if (responseCodeMember != null) {
      successCode = refer('output')
          .nullSafeProperty(responseCodeMember.dartName(ShapeType.structure))
          .ifNullThen(successCode);
    }
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.int
        ..name = 'successCode'
        ..lambda = true
        ..optionalParameters.add(Parameter((p) => p
          ..name = 'output'
          ..type = outputSymbol.boxed))
        ..body = successCode.code,
    );

    // The `buildOutput` method
    final output = outputPayload.symbol == DartTypes.smithy.unit
        ? refer('payload')
        : outputSymbol.newInstanceNamed('fromResponse', [
            refer('payload'),
            refer('response'),
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
                }),
              'builder': error.symbol.property('fromResponse'),
            })
        ]).code,
    );

    final resolvedService = context.service?.resolvedService;
    final isAwsService = resolvedService != null;
    if (isAwsService) {
      // S3 requires a special baseUri to consider customizations
      if (resolvedService.sdkId == 'S3') {
        yield Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.uri
            ..name = 'baseUri'
            ..type = MethodType.getter
            ..body = Code.scope((allocate) => '''
  var baseUri = _baseUri ?? endpoint.uri;
  if (s3ClientConfig.useDualStack) {
    baseUri = baseUri.replace(
      host: baseUri.host.replaceFirst(${allocate(DartTypes.core.regExp)}(r'^s3\\.'), 's3.dualstack.'),
    );
  }
  if (s3ClientConfig.useAcceleration) {
    baseUri = baseUri.replace(
      host: baseUri.host
        .replaceFirst(${allocate(DartTypes.core.regExp)}('\$region\\\\.'), '')
        .replaceFirst(${allocate(DartTypes.core.regExp)}(r'^s3\\.'), 's3-accelerate.'),
    );
  }
  return baseUri;'''),
        );
      } else {
        yield Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.uri
            ..name = 'baseUri'
            ..type = MethodType.getter
            ..body = refer('_baseUri')
                .ifNullThen(refer('endpoint').property('uri'))
                .code,
        );
      }

      // Create an awsEndpoint field we can reuse
      final endpointResolverLib = context.endpointResolverLibrary.libraryUrl;
      final endpointResolver = refer('endpointResolver', endpointResolverLib);
      final sdkId = refer('sdkId', endpointResolverLib);
      yield Field(
        (m) => m
          ..late = true
          ..modifier = FieldModifier.final$
          ..type = DartTypes.smithyAws.awsEndpoint
          ..name = '_awsEndpoint'
          ..assignment = endpointResolver.property('resolve').call([
            sdkId,
            refer('region'),
          ]).code,
      );

      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.smithy.endpoint
          ..name = 'endpoint'
          ..type = MethodType.getter
          ..body = refer('_awsEndpoint').property('endpoint').code,
      );

      // Override `run` to use zone values
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.async.future(outputSymbol)
          ..name = 'run'
          ..requiredParameters.add(Parameter((p) => p
            ..type = inputSymbol
            ..name = 'input'))
          ..optionalParameters.addAll([
            Parameter((p) => p
              ..type = DartTypes.core.uri.boxed
              ..name = 'baseUri'
              ..named = true),
            Parameter((p) => p
              ..type = DartTypes.smithy.httpClient.boxed
              ..name = 'client'
              ..named = true),
            Parameter((p) => p
              ..type = DartTypes.smithy.shapeId.boxed
              ..name = 'useProtocol'
              ..named = true),
          ])
          ..body = DartTypes.async.runZoned
              .call([
                Method(
                  (m) => m
                    ..body = refer('super').property('run').call([
                      refer('input')
                    ], {
                      'baseUri': refer('baseUri'),
                      'client': refer('client'),
                      'useProtocol': refer('useProtocol')
                    }).code,
                ).closure,
              ], {
                'zoneValues': refer('_awsEndpoint')
                    .property('credentialScope')
                    .nullSafeProperty('zoneValues'),
              })
              .returned
              .statement,
      );
    }
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
                ..._protocolParameters(protocol),
              }),
          ]).code,
      );

  Expression _protocolSerializers(ProtocolDefinitionTrait protocol) {
    final additionalSerializers = <Expression>[];
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

    var needsContentLength = true;
    final payloadMember = inputPayload.member;
    if (payloadMember != null) {
      final targetShape = context.shapeFor(payloadMember.target);
      needsContentLength = targetShape is! BlobShape ||
          !targetShape.isStreaming ||
          targetShape.hasTrait<RequiresLengthTrait>();
    }
    // Empty payloads should not contain `Content-Length` and `Content-Type`
    // headers.
    if (protocol is RestJson1Trait &&
        inputShape.payloadMembers(context).isEmpty) {
      needsContentLength = false;
    }
    if (needsContentLength) {
      yield DartTypes.smithy.withContentLength.constInstance([]);
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
        // Empty payloads should not contain `Content-Length` and `Content-Type`
        // headers.
        if (inputShape.payloadMembers(context).isEmpty) {
          yield* [
            DartTypes.smithy.withNoHeader.constInstance([
              literalString('Content-Length'),
            ]),
            DartTypes.smithy.withNoHeader.constInstance([
              literalString('Content-Type'),
            ]),
          ];
        }
        break;
      case RestXmlTrait:
      default:
    }

    // https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#optionalauth-trait
    final authTrait = shape.getTrait<AuthTrait>();
    final bool isOptionalAuth = shape.hasTrait<OptionalAuthTrait>() ||
        (authTrait != null && authTrait.values.isEmpty);

    // SigV4
    final sigV4 = context.service?.getTrait<SigV4Trait>()?.name;
    if (sigV4 != null) {
      yield DartTypes.smithyAws.withSigV4.newInstance([], {
        'region': refer('region'),
        'serviceName': literalString(sigV4),
        'credentialsProvider': refer('credentialsProvider'),
        if (isOptionalAuth) 'isOptional': literalTrue,
      });
    }

    // AWS customizations
    final serviceId = context.serviceShapeId;
    final aws = context.service?.getTrait<ServiceTrait>();
    if (aws != null && serviceId != null) {
      final trait = aws.resolve(serviceId);
      switch (trait.sdkId) {
        // A client for Amazon API Gateway MUST set the Accept header to the
        // string literal value of "application/json" for all requests.
        //
        // https://awslabs.github.io/smithy/1.0/spec/aws/customizations/apigateway-customizations.html
        case 'API Gateway':
          yield DartTypes.smithy.withHeader.constInstance([
            literalString('Accept'),
            literalString('application/json'),
          ]);
      }
    }
  }

  Map<String, Expression> _protocolParameters(
    ProtocolDefinitionTrait protocol,
  ) {
    final parameters = <String, Expression>{};
    switch (protocol.runtimeType) {
      case RestJson1Trait:
      case RestXmlTrait:
        String? mediaType;
        final payloadShape = inputPayload.member;
        if (payloadShape != null) {
          final targetShape = context.shapeFor(payloadShape.target);
          mediaType = (payloadShape.getTrait<MediaTypeTrait>() ??
                  targetShape.getTrait<MediaTypeTrait>())
              ?.value;
        }
        if (mediaType != null) {
          parameters['mediaType'] = literalString(mediaType);
        }
        break;
    }

    if (protocol is RestXmlTrait) {
      parameters['noErrorWrapping'] = literalBool(protocol.noErrorWrapping);
    }

    return parameters;
  }

  Iterable<Method> get _paginatedMethods sync* {
    final paginatedTraits = this.paginatedTraits;
    if (paginatedTraits == null) {
      return;
    }

    const emptyBody = Code('');

    // The `getToken` method.
    final outputToken = paginatedTraits.outputToken;
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = outputToken?.symbol.boxed ?? DartTypes.core.void$
        ..name = 'getToken'
        ..requiredParameters.add(Parameter((p) => p
          ..type = outputSymbol
          ..name = 'output'))
        ..lambda = outputToken != null
        ..body = outputToken?.buildExpression.call(refer('output')).code ??
            emptyBody,
    );

    // The `getItems` method.
    Expression? defaultValue;
    final items = paginatedTraits.items;
    if (items != null && items.isNullable) {
      final symbol = items.symbol.typeRef.rebuild((t) => t
        ..isNullable = false
        ..types.clear());
      defaultValue = symbol.newInstance([]);
    }
    Expression? itemsBody = items?.buildExpression.call(refer('output'));
    if (defaultValue != null) {
      itemsBody = itemsBody?.ifNullThen(defaultValue);
    }
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = items?.symbol.unboxed ?? DartTypes.core.void$
        ..name = 'getItems'
        ..requiredParameters.add(Parameter((p) => p
          ..type = outputSymbol
          ..name = 'output'))
        ..lambda = itemsBody != null
        ..body = itemsBody?.code ?? emptyBody,
    );

    // The `rebuildInput` method.
    final inputToken = paginatedTraits.inputToken;
    final pageSize = paginatedTraits.pageSize;
    var inputTokenBuilder = inputToken?.buildExpression(refer('b'));
    if (inputTokenBuilder != null) {
      final inputTokenTarget = context.shapeFor(inputToken!.member.target);
      final builderTypes = const [
        ShapeType.set,
        ShapeType.list,
        ShapeType.map,
        ShapeType.structure,
      ];
      final needsBuilder = builderTypes.contains(inputTokenTarget.getType());
      final token = refer('token');
      if (needsBuilder) {
        inputTokenBuilder = inputTokenBuilder.property('replace').call([token]);
      } else {
        inputTokenBuilder = inputTokenBuilder.assign(token);
      }
    }
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = inputSymbol
        ..name = 'rebuildInput'
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..type = inputSymbol
            ..name = 'input'),
          Parameter((p) => p
            ..type = inputToken?.symbol ?? DartTypes.core.void$
            ..name = 'token'),
          Parameter((p) => p
            ..type = pageSize?.symbol.boxed ?? DartTypes.core.void$
            ..name = 'pageSize')
        ])
        ..lambda = true
        ..body = refer('input').property('rebuild').call([
          Method(
            (m) => m
              ..requiredParameters.add(Parameter((p) => p..name = 'b'))
              ..body = Block.of([
                if (inputToken != null && outputToken != null)
                  inputTokenBuilder!.statement,
                if (pageSize != null)
                  pageSize
                      .buildExpression(refer('b'))
                      .assign(refer('pageSize'))
                      .statement
                      .wrapWithBlockIf(
                        refer('pageSize').notEqualTo(literalNull),
                        pageSize.isNullable,
                      ),
              ]),
          ).closure
        ]).code,
    );
  }
}
