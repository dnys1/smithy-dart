import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/protocol/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generation_context.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates Dart classes from [StructureShape] types.
class StructureGenerator extends LibraryGenerator<StructureShape>
    with StructureGenerationContext {
  StructureGenerator(
    StructureShape shape,
    CodegenContext context,
  ) : super(shape, context: context);

  /// The resolved HTTP payload shape/type.
  late final HttpPayload _httpPayload = shape.httpPayload(context);

  @override
  Library generate() {
    // Ad .g.dart part directive
    builder.directives.add(Directive.part('${className.snakeCase}.g.dart'));

    final serializerClasses = _serializerClasses;
    builder.body.addAll([
      _structClass(serializerClasses.keys),
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
          ])
          ..mixins.addAll([
            if (shape.isError)
              if (shape.isHttpError)
                DartTypes.smithy.smithyHttpException
              else
                DartTypes.smithy.smithyException
            else
              DartTypes.smithy.httpInput(_httpPayload.symbol),
          ])
          ..constructors.addAll([
            _factoryConstructor,
            _privateConstructor,
          ])
          ..methods.addAll([
            _defaultValues,
            ..._fieldGetters,
            ..._httpInputOverrides,
            ..._errorFields,
          ])
          ..fields.addAll([
            _serializersField(serializerClasses),
          ]),
      );

  /// The private no-op constructor.
  Constructor get _privateConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_',
      );

  /// The builder/factory constructor.
  Constructor get _factoryConstructor => Constructor(
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
  Method get _defaultValues => Method.returnsVoid((m) => m
    ..annotations.add(DartTypes.builtValue.builtValueHook
        .newInstance([], {'initializeBuilder': literalBool(true)}))
    ..static = true
    ..name = '_init'
    ..requiredParameters.add(Parameter((p) => p
      ..type = builderSymbol
      ..name = 'b'))
    ..body = Block.of([
      for (var member in sortedMembers)
        if (member.defaultValue != null)
          refer('b')
              .property(member.dartName)
              .assign(member.defaultValue!)
              .statement,
    ]));

  /// Fields for this type.
  Iterable<Method> get _fieldGetters sync* {
    for (var member in sortedMembers) {
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

  /// Methods to conform to `HttpInput`.
  Iterable<Method> get _httpInputOverrides sync* {
    if (shape.isError) {
      return;
    }

    // `getPayload` override
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = _httpPayload.symbol
        ..name = 'getPayload'
        ..lambda = true
        ..body = refer(_httpPayload.member?.dartName ?? 'this').code,
    );

    // `isStreaming` override
    final bool isStreaming = _httpPayload.member != null &&
        (_httpPayload.member!.isStreaming ||
            context.shapeFor(_httpPayload.member!.target).isStreaming);
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.bool
        ..name = 'isStreaming'
        ..type = MethodType.getter
        ..lambda = true
        ..body = literalBool(isStreaming).code,
    );
  }

  /// Creates the static `serializers` field using the class names in
  /// [serializerClasses].
  Field _serializersField(Iterable<String> serializerClasses) => Field(
        (f) => f
          ..static = true
          ..modifier = FieldModifier.constant
          ..type =
              DartTypes.core.list(DartTypes.smithy.smithySerializer(symbol))
          ..name = 'serializers'
          ..assignment = literalList(
            serializerClasses.map((name) => refer(name).newInstance([])),
          ).code,
      );

  /// The `built_value` serializer class.
  Map<String, Class> get _serializerClasses {
    final classes = <String, Class>{};
    for (var protocol in context.serviceProtocols) {
      final generator = SerializerGenerator(shape, context, protocol);
      final class$ = generator.generate();
      if (class$ != null) {
        classes[generator.serializerClassName] = class$;
      }
    }
    return classes;
  }

  /// The error traits, if an error structure.
  Iterable<Method> get _errorFields sync* {
    if (!shape.isError) {
      return;
    }

    final cfg = shape.smithyError;
    if (shape.isHttpError) {
      // `kind` getter
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.smithy.errorKind
          ..name = 'kind'
          ..type = MethodType.getter
          ..lambda = true
          ..body = DartTypes.smithy.errorKind.property(cfg.kind.name).code,
      );

      // `statusCode` getter
      yield Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.int.boxed
          ..name = 'statusCode'
          ..type = MethodType.getter
          ..lambda = true
          ..body = (cfg.statusCode == null
                  ? literalNull
                  : literalNum(cfg.statusCode!))
              .code,
      );
    }

    // `message` getter
    final message = shape.members['message'];
    if (message == null) {
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
        ..body = literalBool(cfg.retryConfig != null).code,
    );
  }
}
