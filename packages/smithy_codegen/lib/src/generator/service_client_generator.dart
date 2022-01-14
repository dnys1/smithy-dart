import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serializers_generator.dart';

class ServiceClientGenerator extends LibraryGenerator<ServiceShape> {
  ServiceClientGenerator(ServiceShape shape, CodegenContext context)
      : super(shape, context: context);

  late final List<OperationShape> _operations =
      context.shapes.values.whereType<OperationShape>().toList();

  @override
  Library generate() {
    return builder.build();
  }
}
