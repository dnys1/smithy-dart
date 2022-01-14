import 'package:code_builder/src/specs/library.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

class ErrorGenerator extends LibraryGenerator<StructureShape> {
  ErrorGenerator(StructureShape shape, CodegenContext context)
      : super(shape, context: context);

  @override
  Library generate() {
    builder.body.addAll([]);

    return builder.build();
  }
}
