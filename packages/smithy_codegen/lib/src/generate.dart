import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/format/format_stub.dart'
    if (dart.library.io) 'package:smithy_codegen/src/format/format_io.dart';
import 'package:smithy_codegen/src/generator/allocator.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/visitors/library_visitor.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Header which prefixes all generated files.
const header = '// Generated code. DO NOT MODIFY.';

/// The default emitter for codegen operations.
DartEmitter buildEmitter(Library library) => DartEmitter(
      allocator: SmithyAllocator(library),
      orderDirectives: true,
      useNullSafetySyntax: true,
    );

/// Generates a Dart file for each of the relevant shape types in [ast].
///
/// Returns a map from the library to its formatted definition file.
Map<SmithyLibrary, String> generateForAst(
  SmithyAst ast, {
  required String packageName,
  required String serviceName,
  Pubspec? pubspec,
}) {
  final context = CodegenContext(
    smithyVersion: ast.version,
    metadata: ast.metadata.toMap(),
    shapes: ast.shapes,
    packageName: packageName,
    serviceName: serviceName,
  );

  // Generate libraries for relevant shape types.
  final Map<Shape, Library> libraries = (Map.fromEntries(
    context.shapes.values
        .map((shape) => MapEntry(shape, shape.accept(LibraryVisitor(context)))),
  )..removeWhere((_, value) => value == null))
      .cast();

  // Emit Dart code and format
  return libraries.map((shape, library) {
    return MapEntry(
      shape.smithyLibrary(packageName, serviceName),
      '$header\n\n' + format('${library.accept(buildEmitter(library))}'),
    );
  });
}
