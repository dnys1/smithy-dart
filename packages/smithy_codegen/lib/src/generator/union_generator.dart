import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generate.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

class UnionGenerator extends LibraryGenerator<UnionShape> {
  UnionGenerator(
    UnionShape shape, {
    required CodegenContext context,
  }) : super(shape, context: context);

  @override
  Library generate() {
    throw UnimplementedError();
  }

  // Iterable<Constructor> get _factoryConstructors sync* {
  //   for (var definition in sortedDefinitions) {
  //     yield Constructor(
  //       (c) => c
  //         ..constant = true
  //         ..factory = true
  //         ..name = definition.variantName
  //         ..redirect = refer(definition.variantClassName),
  //     );
  //   }
  // }
}


  // /// The name of the enum variant's private class name.
  // String get variantClassName => '_$variantName'.pascalCase;