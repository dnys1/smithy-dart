import 'package:code_builder/src/specs/library.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

class ServiceGenerator extends LibraryGenerator<ServiceShape> {
  ServiceGenerator(
    ServiceShape shape, {
    required CodegenContext context,
  }) : super(shape, context: context);

  @override
  Library generate() {
    throw UnimplementedError();
  }
}
