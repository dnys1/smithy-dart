import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';

/// Generates the top-level library file which simply exports all the public
/// types generated in the service's closure. This includes all operations,
/// models, serializers, and the service client -- basically everything except
/// the generated payload types which are meant to be an internal abstraction.
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
