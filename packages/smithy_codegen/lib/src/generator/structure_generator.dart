import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/protocol/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generation_context.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Generates Dart classes from [StructureShape] types.
class StructureGenerator extends LibraryGenerator<StructureShape>
    with StructureGenerationContext, HttpGenerationContext {
  StructureGenerator(
    StructureShape shape, {
    required CodegenContext context,
  }) : super(shape, context: context);

  /// The resolved HTTP payload shape/type.
  late final HttpPayload _httpPayload = httpPayload(shape, symbol);

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
            DartTypes.smithy.httpInput(_httpPayload.symbol),
          ])
          ..constructors.addAll([
            _factoryConstructor,
            _privateConstructor,
          ])
          ..methods.addAll([
            ..._fieldGetters,
            ..._httpInputOverrides,
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

  /// Fields for this type.
  Iterable<Method> get _fieldGetters sync* {
    for (var member in sortedMembers) {
      yield Method(
        (f) => f
          ..annotations.addAll([
            if (member.deprecatedAnnotation != null)
              member.deprecatedAnnotation!,
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
    final bool isStreaming =
        _httpPayload.member != null && _httpPayload.member!.isStreaming ||
            context.shapeFor(_httpPayload.member!.target).isStreaming;
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
}
