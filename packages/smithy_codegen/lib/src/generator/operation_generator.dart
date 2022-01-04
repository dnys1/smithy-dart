import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

class OperationGenerator extends LibraryGenerator<OperationShape> {
  OperationGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  late final inputShape = context.shapeFor(shape.input?.target ?? UnitShape.id);

  late final inputSymbol =
      context.symbolFor(shape.input?.target ?? UnitShape.id);

  late final outputShape =
      context.shapeFor(shape.output?.target ?? UnitShape.id);

  late final outputSymbol =
      context.symbolFor(shape.output?.target ?? UnitShape.id);

  late final errorSymbols =
      shape.errors.map((error) => context.symbolFor(error.target));

  @override
  Library generate() {
    return builder.build();
  }
}
