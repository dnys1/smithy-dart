import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/format/format_stub.dart'
    if (dart.library.io) 'package:smithy_codegen/src/format/format_io.dart';
import 'package:smithy_codegen/src/generator/allocator.dart';

class GeneratedLibrary {
  GeneratedLibrary(this.smithyLibrary, this.library);

  final SmithyLibrary smithyLibrary;
  final Library library;
  final Set<String> dependencies = {};

  String emit() {
    final allocator = SmithyAllocator(library);
    final output =
        '$header\n\n' + format('${library.accept(buildEmitter(allocator))}');
    dependencies.addAll(allocator.dependencies);
    return output;
  }
}
