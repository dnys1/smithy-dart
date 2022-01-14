import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

class ServiceGenerator extends LibraryGenerator<ServiceShape> {
  ServiceGenerator(
    ServiceShape shape,
    CodegenContext context,
  ) : super(shape, context: context);

  @override
  Library generate() {
    builder.directives.addAll([
      for (final type in context.generatedTypes) Directive.export(type.url!),
      for (final lib in [
        context.serviceSerializersLibrary,
        context.serviceClientLibrary,
      ])
        Directive.export(lib.libraryUrl)
    ]);

    return builder.build();
  }
}
