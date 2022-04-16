import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/allocator.dart';

class GeneratedLibrary with AWSEquatable<GeneratedLibrary> {
  GeneratedLibrary(
    this.smithyLibrary,
    this.library, {
    this.libraryDocs,
  });

  final SmithyLibrary smithyLibrary;
  final Library library;
  final Set<String> dependencies = {};

  /// Documentation to add to the library directive (not supported
  /// via code_builder).
  final String? libraryDocs;

  String emit({bool withPrefixing = true}) {
    final allocator =
        SmithyAllocator(library, smithyLibrary, withPrefixing: withPrefixing);
    final output = '$header\n\n${libraryDocs ?? ''}' +
        format('${library.accept(buildEmitter(allocator))}');
    dependencies.addAll(allocator.dependencies);
    return output;
  }

  @override
  List<Object?> get props => [smithyLibrary];
}
