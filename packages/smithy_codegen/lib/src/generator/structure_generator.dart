import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates Dart classes from [StructureShape] types.
class StructureGenerator extends LibraryGenerator<StructureShape>
    with StructureGenerationContext, NamedMembersGenerationContext {
  StructureGenerator(
    StructureShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          shape,
          context: context,
          smithyLibrary: smithyLibrary,
        );

  /// The members marked with the `hostLabel` or `httpLabel` traits.
  late final List<MemberShape> labels = shape.isInputShape
      ? [
          ...httpInputTraits!.httpLabels,
          if (httpInputTraits!.hostLabel != null) httpInputTraits!.hostLabel!,
        ]
      : const [];

  @override
  Library generate() {
    // Add .g.dart part directive
    builder.directives
        .add(Directive.part('${shape.className(context)!.snakeCase}.g.dart'));

    // Hide the payload symbol if there is one
    (context.generatedTypes[symbol] ??= []).addAll([
      if (hasBuiltPayload) payloadSymbol.symbol!,
    ]);

    final serializerClasses = _serializerClasses;
    builder.body.addAll([
      _structClass(serializerClasses.keys),
      if (hasBuiltPayload) _payloadClass,
      ...serializerClasses.values,
    ]);

    return builder.build();
  }

  /// The main struct class.
  Class _structClass(Iterable<String> serializerClasses) => Class(
        (c) => c
          ..name = className
          ..abstract = true
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..annotations.addAll([
            if (shape.isUnstable) DartTypes.meta.experimental,
          ])
          ..implements.addAll([
            DartTypes.builtValue.built(symbol, builderSymbol),

            // A marker trait for empty payloads, which should be serialized
            // than payloads with all null members.
            if (payloadMember == null && payloadMembers.isEmpty)
              DartTypes.smithy.emptyPayload,

            if (hasPayload) DartTypes.smithy.hasPayload(payloadSymbol.unboxed),
            if (shape.isError) DartTypes.smithy.smithyHttpException,
          ])
          ..mixins.addAll([
            if (shape.isInputShape)
              DartTypes.smithy.httpInput(payloadSymbol.unboxed),
            DartTypes.awsCommon.awsEquatable(symbol),
          ])
          ..constructors.addAll([
            _factoryConstructor(
              builderSymbol: builderSymbol,
              builtSymbol: builtSymbol,
            ),
            _privateConstructor,
            if (shape.isInputShape) _fromRequestConstructor,
            if (shape.isOutputShape || shape.isError) _fromResponseConstructor,
          ])
          ..methods.addAll([
            defaultValues(
              members: sortedMembers,
              builderSymbol: builderSymbol,
            ),
            ..._fieldGetters(isPayload: false),
            ..._httpInputOverrides,
            if (shape.isInputShape || hasPayload) _getPayload,
            ..._errorFields,
            _props(sortedMembers),
            _toString(isPayload: false),
          ])
          ..fields.addAll([
            _serializersField(serializerClasses),
          ]),
      );

  /// The struct's built payload class.
  Class get _payloadClass => Class(
        (c) => c
          ..name = payloadClassName
          ..abstract = true
          ..annotations.addAll([
            // Developers only ever interact with the main struct.
            DartTypes.meta.internal,
          ])
          ..implements.addAll([
            DartTypes.builtValue.built(payloadSymbol, payloadBuilderSymbol),

            // A marker trait for empty payloads, which should be serialized
            // than payloads with all null members.
            if (payloadMembers.isEmpty) DartTypes.smithy.emptyPayload,
          ])
          ..mixins.addAll([
            DartTypes.awsCommon.awsEquatable(payloadSymbol),
          ])
          ..constructors.addAll([
            _factoryConstructor(
              builderSymbol: payloadBuilderSymbol,
              builtSymbol: builtPayloadSymbol!,
            ),
            _privateConstructor,
          ])
          ..methods.addAll([
            defaultValues(
              members: payloadMembers,
              builderSymbol: payloadBuilderSymbol,
            ),
            ..._fieldGetters(isPayload: true),
            _props(payloadMembers),
            _toString(isPayload: true),
          ]),
      );

  /// The private no-op constructor.
  Constructor get _privateConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_',
      );

  /// The builder/factory constructor.
  Constructor _factoryConstructor({
    required Reference builderSymbol,
    required Reference builtSymbol,
  }) =>
      Constructor(
        (c) => c
          ..factory = true
          ..annotations.addAll([
            if (shape.deprecatedAnnotation != null) shape.deprecatedAnnotation!,
          ])
          ..optionalParameters.add(Parameter(
            (p) => p
              ..name = 'updates'
              ..type = FunctionType(
                (t) => t
                  ..returnType = DartTypes.core.void$
                  ..requiredParameters.add(builderSymbol),
              ),
          ))
          ..redirect = builtSymbol,
      );

  /// The server constructor from an incoming request.
  Constructor get _fromRequestConstructor {
    final Expression output;
    if (payloadSymbol == symbol) {
      output = refer('payload');
    } else {
      output = symbol.newInstance([
        Method(
          (m) => m
            ..requiredParameters.add(Parameter((p) => p..name = 'b'))
            ..lambda = false
            ..body = Block.of(_outputBuilder(refer('request'))),
        ).closure,
      ]);
    }
    return Constructor(
      (c) => c
        ..factory = true
        ..name = 'fromRequest'
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..name = 'payload'
            ..type = payloadSymbol),
          Parameter((p) => p
            ..name = 'request'
            ..type = DartTypes.awsCommon.awsBaseHttpRequest),
        ])
        ..optionalParameters.add(Parameter((p) => p
          ..name = 'labels'
          ..type = DartTypes.core.map(
            DartTypes.core.string,
            DartTypes.core.string,
          )
          ..named = true
          ..defaultTo = literalConstMap({}).code))
        ..body = output.code,
    );
  }

  /// The builder/factory constructor.
  Constructor get _fromResponseConstructor {
    final Expression output;
    if (payloadSymbol == symbol) {
      if (httpErrorTraits == null) {
        output = refer('payload');
      } else {
        output = refer('payload').property('rebuild').call([
          Method(
            (m) => m
              ..requiredParameters.add(Parameter((p) => p..name = 'b'))
              ..lambda = false
              ..body = Block.of(_rebuildOutput),
          ).closure,
        ]);
      }
    } else {
      output = symbol.newInstance([
        Method(
          (m) => m
            ..requiredParameters.add(Parameter((p) => p..name = 'b'))
            ..lambda = false
            ..body = Block.of(_outputBuilder(refer('response'))),
        ).closure,
      ]);
    }
    return Constructor(
      (c) => c
        ..factory = true
        ..name = 'fromResponse'
        ..requiredParameters.addAll([
          Parameter((p) => p
            ..name = 'payload'
            ..type = payloadSymbol),
          Parameter((p) => p
            ..name = 'response'
            ..type = DartTypes.awsCommon.awsBaseHttpResponse),
        ])
        ..body = output.code,
    );
  }

  Method _props(List<MemberShape> members) => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.list(DartTypes.core.object.boxed)
          ..type = MethodType.getter
          ..name = 'props'
          ..lambda = true
          ..body = literalList([
            for (final member in members)
              refer(member.dartName(ShapeType.structure)),
          ]).code,
      );

  /// Adds default values to relevant properties.
  Method defaultValues({
    required List<MemberShape> members,
    required Reference builderSymbol,
  }) =>
      Method.returnsVoid(
        (m) => m
          ..annotations.add(DartTypes.builtValue.builtValueHook
              .newInstance([], {'initializeBuilder': literalTrue}))
          ..static = true
          ..name = '_init'
          ..requiredParameters.add(Parameter((p) => p
            ..type = builderSymbol
            ..name = 'b'))
          ..body = Block.of([
            for (var member in members) _defaultValue(member),
          ].whereType()),
      );

  Code? _defaultValue(MemberShape member) {
    final property = refer('b').property(member.dartName(ShapeType.structure));
    // In tests, client implementations that automatically provide values for
    // members marked with the idempotencyToken trait MUST use a constant value
    // of `00000000-0000-4000-8000-000000000000`.
    //
    // https://awslabs.github.io/smithy/1.0/spec/http-protocol-compliance-tests.html#parameter-format
    if (member.isIdempotencyToken) {
      return Block.of([
        property
            .assign(literalString('00000000-0000-4000-8000-000000000000'))
            .wrapWithBlockIf(
                DartTypes.core.bool.constInstanceNamed('hasEnvironment', [
              literalString('SMITHY_TEST'),
            ])),
        const Code('else {'),
        property
            .assign(
              DartTypes.uuid.uuid.constInstance([]).property('v4').call([]),
            )
            .statement,
        const Code('}'),
      ]);
    }
    final targetShape = context.shapeFor(member.target);
    final defaultValue = member.defaultValue ?? targetShape.defaultValue;
    if (defaultValue == null) {
      return null;
    }
    return property.assign(defaultValue).statement;
  }

  /// Fields for this type.
  Iterable<Method> _fieldGetters({
    required bool isPayload,
  }) sync* {
    final members = isPayload ? payloadMembers : sortedMembers;
    for (var member in members) {
      yield Method(
        (m) => m
          ..annotations.addAll([
            if (member.deprecatedAnnotation != null)
              member.deprecatedAnnotation!,

            // Add override annotation for this specific field when the class
            // implements SmithyError. Per the docs, this field should be
            // treated specially.
            //
            // https://awslabs.github.io/smithy/1.0/spec/core/type-refinement-traits.html#error-trait
            if (shape.isError &&
                member.dartName(ShapeType.structure) == 'message' &&
                !isPayload)
              DartTypes.core.override,

            if (member.isUnstable || context.shapeFor(member.target).isUnstable)
              DartTypes.meta.experimental,
          ])
          ..docs.addAll([
            if (member.hasDocs(context)) member.formattedDocs(context),
          ])
          ..returns = memberSymbols[member]!
          ..type = MethodType.getter
          ..name = member.dartName(ShapeType.structure),
      );
    }
  }

  /// The `getPayload` method.
  Method get _getPayload => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = payloadSymbol
          ..name = 'getPayload'
          ..lambda = true
          ..body = _buildPayload,
      );

  Code get _buildPayload {
    if (payloadSymbol == symbol) {
      return refer('this').code;
    }

    // If an instance member, return it.
    if (payloadMember != null) {
      Expression payload = refer(payloadMember!.dartName(ShapeType.structure));
      // If the payload shape is empty or has only nullable instance members,
      // and this shape's instance member is null, return a built payload.
      final targetShape = context.shapeFor(payloadMember!.target);
      if (payloadMember!.isNullable(context, shape) &&
          targetShape is StructureShape &&
          targetShape.members.values.map((member) {
            return member.isNullable(context, targetShape);
          }).every((isNullable) => isNullable)) {
        payload = payload.ifNullThen(payloadSymbol.unboxed.newInstance([]));
      }
      return payload.code;
    }

    // Build the payload using the payload builder class.
    final builder = refer('b');
    final block = BlockBuilder();
    for (final member in payloadMembers) {
      final memberName = member.dartName(ShapeType.structure);
      final hasNestedBuilder = [
        ShapeType.list,
        ShapeType.set,
        ShapeType.map,
        ShapeType.structure,
      ].contains(context.shapeFor(member.target).getType());
      final isNullable = member.isNullable(context, payloadShape);
      if (hasNestedBuilder) {
        block.statements.add(
          builder.property(memberName).property('replace').call([
            isNullable ? refer(memberName).nullChecked : refer(memberName)
          ]).wrapWithBlockIf(
            refer(memberName).notEqualTo(literalNull),
            isNullable,
          ),
        );
      } else {
        block.statements.add(
          builder.property(memberName).assign(refer(memberName)).statement,
        );
      }
    }
    return payloadSymbol.newInstance([
      if (payloadMembers.isNotEmpty)
        Method((m) => m
          ..requiredParameters.add(Parameter((p) => p..name = 'b'))
          ..body = block.build()).closure,
    ]).code;
  }

  /// Methods to conform to `HttpInput`.
  Iterable<Method> get _httpInputOverrides sync* {
    if (!shape.isInputShape) {
      return;
    }

    // The `labelFor` method
    if (labels.isNotEmpty) {
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.string
          ..name = 'labelFor'
          ..requiredParameters.add(Parameter((p) => p
            ..type = DartTypes.core.string
            ..name = 'key'))
          ..body = Block.of([
            const Code('switch (key) {'),
            for (var label in labels) ...[
              Code("case '${label.memberName}':"),
              valueToString(
                refer(label.dartName(ShapeType.structure)),
                label,
              ).returned.statement,
            ],
            const Code('}'),
            DartTypes.smithy.missingLabelException
                .newInstance([refer('this'), refer('key')])
                .thrown
                .statement,
          ]),
      );
    }
  }

  /// Creates the static `serializers` field using the class names in
  /// [serializerClasses].
  Field _serializersField(Iterable<String> serializerClasses) => Field(
        (f) => f
          ..static = true
          ..modifier = FieldModifier.constant
          ..type = DartTypes.core.list(DartTypes.smithy.smithySerializer())
          ..name = 'serializers'
          ..assignment = literalList(
            serializerClasses.map((name) => refer(name).newInstance([])),
          ).code,
      );

  /// The `built_value` serializer class.
  Map<String, Class> get _serializerClasses {
    final classes = <String, Class>{};
    for (var protocol in context.serviceProtocols) {
      final generator = protocol.structureGenerator(shape, context);
      final clazz = generator.generate();
      if (clazz != null) {
        classes[generator.serializerClassName] = clazz;
      }
    }
    return classes;
  }

  /// The error traits, if an error structure.
  Iterable<Method> get _errorFields sync* {
    final errorTraits = httpErrorTraits;
    if (errorTraits == null) {
      return;
    }

    // `shapeId` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.smithy.shapeId
        ..type = MethodType.getter
        ..name = 'shapeId'
        ..body = shape.shapeId.constructed.code,
    );

    // `message` getter
    if (!shape.members.values
        .map((m) => m.dartName(ShapeType.structure))
        .contains('message')) {
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.string.boxed
          ..name = 'message'
          ..type = MethodType.getter
          ..lambda = true
          ..body = literalNull.code,
      );
    }

    // `retryConfig` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.smithy.retryConfig.boxed
        ..name = 'retryConfig'
        ..type = MethodType.getter
        ..lambda = true
        ..body = errorTraits.retryConfig == null
            ? literalNull.code
            : DartTypes.smithy.retryConfig.constInstance([], {
                'isThrottlingError':
                    literalBool(errorTraits.retryConfig!.isThrottlingError),
              }).code,
    );

    // SmithyHttpException overrides
    // TODO(dnys1): Find a way to make these non-null.
    /// Make every HTTP error a payload?
    if (!shape.members.values
        .map((m) => m.dartName(ShapeType.structure))
        .contains('statusCode')) {
      final statusCode = errorTraits.statusCode;
      yield Method(
        (m) {
          m
            ..annotations.addAll([
              DartTypes.core.override,
              DartTypes.builtValue.builtValueField.newInstance([], {
                'compare': literalFalse,
              })
            ])
            ..returns = DartTypes.core.int.withBoxed(statusCode == null)
            ..type = MethodType.getter
            ..name = 'statusCode';

          if (statusCode != null) {
            m.body = literalNum(statusCode).code;
          }
        },
      );
    }

    yield Method(
      (m) => m
        ..annotations.addAll([
          DartTypes.core.override,
          DartTypes.builtValue.builtValueField.newInstance([], {
            'compare': literalFalse,
          })
        ])
        ..returns = DartTypes.core
            .map(
              DartTypes.core.string,
              DartTypes.core.string,
            )
            .boxed
        ..type = MethodType.getter
        ..name = 'headers',
    );
  }

  /// The statements of the output builder.
  Iterable<Code> _outputBuilder(Expression httpObj) sync* {
    final builder = refer('b');
    final payload = refer('payload');

    final payloadShape = payloadMember;

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
        final isNullable = member.isNullable(context, shape);
        return builder
            .property(member.dartName(ShapeType.structure))
            .property('replace')
            .call([
              isNullable && member != payloadShape
                  ? payloadProp.nullChecked
                  : payloadProp
            ])
            .statement
            .wrapWithBlockIf(payloadProp.notEqualTo(literalNull), isNullable);
      } else {
        return builder
            .property(member.dartName(ShapeType.structure))
            .assign(payloadProp)
            .statement;
      }
    }

    // Add all payload members to the output.
    if (payloadShape != null) {
      yield _putShape(payloadShape, payload);
    } else if (hasBuiltPayload) {
      for (final member in payloadMembers) {
        final payloadProp =
            payload.property(member.dartName(ShapeType.structure));
        yield _putShape(member, payloadProp);
      }
    }

    final HttpTraits httpTraits =
        (httpInputTraits ?? httpOutputTraits ?? httpErrorTraits)!;

    // Add HTTP headers to the output.
    final headersRef = httpObj.property('headers');
    for (final entry in httpTraits.httpHeaders.entries) {
      yield _outputMapValue(
        headersRef.index(literalString(entry.key)),
        entry.value,
        builder.property(entry.value.dartName(ShapeType.structure)),
        isNullable: true,
      );
    }

    // Add all HTTP headers with a certain prefix to the output.
    final prefixHeaders = httpTraits.httpPrefixHeaders;
    if (prefixHeaders != null) {
      yield builder
          .property(prefixHeaders.member.dartName(ShapeType.structure))
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

    if (httpTraits is HttpInputTraits) {
      final queryRef = httpObj.property('queryParameters');
      final httpQuery = httpTraits.httpQuery;
      for (final entry in httpQuery.entries) {
        yield _outputMapValue(
          queryRef.index(literalString(entry.key)),
          entry.value,
          builder.property(entry.value.dartName(ShapeType.structure)),
          isNullable: true,
        );
      }

      final labelsRef = refer('labels');
      for (final member in httpTraits.httpLabels) {
        final memberName = member.dartName(ShapeType.structure);
        final ref = labelsRef.index(literalString(memberName));
        final fromString = valueFromString(ref.nullChecked, member);
        yield builder
            .property(memberName)
            .assign(fromString)
            .statement
            .wrapWithBlockIf(ref.notEqualTo(literalNull));
      }
    }

    // Add the HTTP context to the output.
    if (httpTraits is HttpOutputTraits) {
      final statusCode = httpTraits.httpResponseCode;
      if (statusCode != null) {
        yield builder
            .property(statusCode.dartName(ShapeType.structure))
            .assign(httpObj.property('statusCode'))
            .statement;
      }
    } else if (httpTraits is HttpErrorTraits) {
      if (httpTraits.statusCode == null) {
        yield builder
            .property('statusCode')
            .assign(httpObj.property('statusCode'))
            .statement;
      }
      yield builder
          .property('headers')
          .assign(httpObj.property('headers'))
          .statement;
    }
  }

  Iterable<Code> get _rebuildOutput sync* {
    final errorTraits = httpErrorTraits;
    if (errorTraits == null) {
      return;
    }

    final builder = refer('b');
    final response = refer('response');

    if (errorTraits.statusCode == null) {
      yield builder
          .property('statusCode')
          .assign(response.property('statusCode'))
          .statement;
    }
    yield builder
        .property('headers')
        .assign(response.property('headers'))
        .statement;
  }

  /// Extracts the value from an HTTP map object (headers, query parameters).
  Code _outputMapValue(
    Expression ref,
    Shape value,
    Expression valueRef, {
    required bool isNullable,
  }) {
    final fromStringExp = valueFromString(
      (isNullable ? ref.nullChecked : ref),
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
      ref.notEqualTo(literalNull),
      isNullable,
    );
  }

  /// Custom `toString` impl which mirrors the built_value impl but allows for
  /// handling sensitive types defined by the `@sensitive` trait.
  Method _toString({required bool isPayload}) {
    final builder = BlockBuilder();
    final helper = refer('helper');
    builder.addExpression(
      DartTypes.builtValue.newBuiltValueToStringHelper.call([
        literalString(isPayload ? payloadClassName! : className)
      ]).assignFinal('helper'),
    );
    final members = isPayload ? payloadMembers : sortedMembers;
    for (final member in members) {
      final dartName = member.dartName(ShapeType.structure);
      final isSensitive = shape.hasTrait<SensitiveTrait>() ||
          member.hasTrait<SensitiveTrait>() ||
          context.shapeFor(member.target).hasTrait<SensitiveTrait>();
      final stringValue =
          isSensitive ? literalString('***SENSITIVE***') : refer(dartName);
      builder.addExpression(helper.property('add').call([
        literalString(dartName),
        stringValue,
      ]));
    }
    builder.addExpression(helper.property('toString').call([]).returned);
    return Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.string
        ..name = 'toString'
        ..body = builder.build(),
    );
  }
}
