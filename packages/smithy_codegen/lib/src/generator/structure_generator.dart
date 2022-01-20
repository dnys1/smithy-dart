import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates Dart classes from [StructureShape] types.
class StructureGenerator extends LibraryGenerator<StructureShape>
    with StructureGenerationContext, NamedMembersGenerationContext {
  StructureGenerator(
    StructureShape shape,
    CodegenContext context,
  ) : super(shape, context: context);

  @override
  Library generate() {
    // Ad .g.dart part directive
    builder.directives.add(Directive.part('${className.snakeCase}.g.dart'));

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
            if (shape.docs != null) formatDocs(shape.docs!),
          ])
          ..implements.addAll([
            DartTypes.builtValue.built(symbol, builderSymbol),
            if (hasPayload) DartTypes.smithy.hasPayload(payloadSymbol!)
          ])
          ..mixins.addAll([
            if (shape.isError)
              if (shape.isHttpError)
                DartTypes.smithy.smithyHttpException
              else
                DartTypes.smithy.smithyException,
            if (shape.isInputShape) DartTypes.smithy.httpInput(payloadSymbol!)
          ])
          ..constructors.addAll([
            _factoryConstructor(
              builderSymbol: builderSymbol,
              builtSymbol: builtSymbol,
            ),
            _privateConstructor,
          ])
          ..methods.addAll([
            _defaultValues(
              members: sortedMembers,
              builderSymbol: builderSymbol,
            ),
            ..._fieldGetters(sortedMembers),
            ..._httpInputOverrides,
            if (hasPayload) _getPayload,
            ..._errorFields,
          ])
          ..fields.addAll([
            _serializersField(serializerClasses),
          ]),
      );

  /// The struct's payload class.
  Class get _payloadClass => Class(
        (c) => c
          ..name = '${className}Payload'
          ..abstract = true
          ..annotations.addAll([
            // Developers only ever interact with the main struct.
            DartTypes.meta.internal,

            // Payload types do not need nested builders. These are nice for DX
            // in the main struct, but do not add anything in the payload since
            // this is an internal class.
            DartTypes.builtValue.builtValue.newInstance([], {
              'nestedBuilders': literalFalse,
            }),
          ])
          ..implements.addAll([
            DartTypes.builtValue.built(payloadSymbol!, payloadBuilderSymbol!),
          ])
          ..constructors.addAll([
            _factoryConstructor(
              builderSymbol: payloadBuilderSymbol!,
              builtSymbol: builtPayloadSymbol!,
            ),
            _privateConstructor,
          ])
          ..methods.addAll([
            _defaultValues(
              members: payloadMembers,
              builderSymbol: payloadBuilderSymbol!,
            ),
            ..._fieldGetters(payloadMembers),
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

  /// Adds default values to relevant properties.
  Method _defaultValues({
    required List<MemberShape> members,
    required Reference builderSymbol,
  }) =>
      Method.returnsVoid(
        (m) => m
          ..annotations.add(DartTypes.builtValue.builtValueHook
              .newInstance([], {'initializeBuilder': literalBool(true)}))
          ..static = true
          ..name = '_init'
          ..requiredParameters.add(Parameter((p) => p
            ..type = builderSymbol
            ..name = 'b'))
          ..body = Block.of([
            for (var member in members)
              if (member.defaultValue != null)
                refer('b')
                    .property(member.dartName)
                    .assign(member.defaultValue!)
                    .statement,
          ]),
      );

  /// Fields for this type.
  Iterable<Method> _fieldGetters(List<MemberShape> members) sync* {
    for (var member in members) {
      yield Method(
        (f) => f
          ..annotations.addAll([
            if (member.deprecatedAnnotation != null)
              member.deprecatedAnnotation!,

            // Add override annotation for this specific field when the class
            // implements SmithyError. Per the docs, this field should be
            // treated specially.
            // https://awslabs.github.io/smithy/1.0/spec/core/type-refinement-traits.html#error-trait
            if (shape.isError && member.dartName == 'message')
              DartTypes.core.override,
          ])
          ..docs.addAll([
            if (member.docs != null) formatDocs(member.docs!),
          ])
          ..returns = memberSymbols[member]!
          ..type = MethodType.getter
          ..name = member.dartName,
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
    // If an instance member, return it.
    if (payloadShape != null) {
      return refer(payloadShape!.dartName).code;
    }

    // Build the payload using the payload builder class.
    Expression builder = refer('b');
    for (final member in payloadMembers) {
      builder = builder.cascade(member.dartName).assign(refer(member.dartName));
    }
    return payloadSymbol!.newInstance([
      if (payloadMembers.isNotEmpty)
        Method((m) => m
          ..requiredParameters.add(Parameter((p) => p..name = 'b'))
          ..body = builder.code).closure,
    ]).code;
  }

  /// Methods to conform to `HttpInput`.
  Iterable<Method> get _httpInputOverrides sync* {
    if (!shape.isInputShape) {
      return;
    }

    // The `labelFor` method
    final inputTraits = httpInputTraits!;
    final labels = [
      ...inputTraits.httpLabels,
      if (inputTraits.hostLabel != null) inputTraits.hostLabel!,
    ];
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
              refer(label.dartName)
                  // TODO: proper toString (timestamps, etc.)
                  .property('toString')
                  .call([])
                  .returned
                  .statement,
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
      final generator = StructureSerializerGenerator(shape, context, protocol);
      final class$ = generator.generate();
      if (class$ != null) {
        classes[generator.serializerClassName] = class$;
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
    if (shape.isHttpError) {
      // `kind` getter
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.smithy.errorKind
          ..name = 'kind'
          ..type = MethodType.getter
          ..lambda = true
          ..body =
              DartTypes.smithy.errorKind.property(errorTraits.kind.name).code,
      );

      // `statusCode` getter
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.int.boxed
          ..name = 'statusCode'
          ..type = MethodType.getter
          ..lambda = true
          ..body = literalNum(errorTraits.statusCode).code,
      );
    }

    // `message` getter
    if (!CaseInsensitiveSet(shape.members.keys).contains('message')) {
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

    // `isRetryable` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.bool
        ..name = 'isRetryable'
        ..type = MethodType.getter
        ..lambda = true
        ..body = literalBool(errorTraits.retryConfig != null).code,
    );
  }
}
