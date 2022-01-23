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
      for (final type in context.generatedTypes.entries)
        Directive.export(type.key.url!, hide: type.value),
      Directive.export(context.serviceClientLibrary.libraryUrl)
    ]);

    return builder.build();
  }
}
