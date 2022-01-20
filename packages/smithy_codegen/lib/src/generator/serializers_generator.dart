import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';

class SerializersGenerator extends Generator<Library> {
  SerializersGenerator(this.context);

  final CodegenContext context;

  @override
  Library generate() {
    return Library((b) => b
      ..name = context.serviceSerializersLibrary.libraryName
      ..body.addAll([
        _serializers,
        _builderFactories,
      ]));
  }

  Field get _serializers => Field(
        (f) => f
          ..modifier = FieldModifier.constant
          ..type = DartTypes.core.list(DartTypes.smithy.smithySerializer())
          ..name = 'serializers'
          ..assignment = literalConstList([
            for (final type in context.generatedTypes)
              type.property('serializers').spread,
          ]).code,
      );

  Field get _builderFactories => Field(
        (f) => f
          ..modifier = FieldModifier.final$
          ..type = DartTypes.core
              .map(DartTypes.builtValue.fullType, DartTypes.core.function)
          ..name = 'builderFactories'
          ..assignment = literalMap(context.builderFactories).code,
      );
}
