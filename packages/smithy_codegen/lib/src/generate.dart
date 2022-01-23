import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/format/format_stub.dart'
    if (dart.library.io) 'package:smithy_codegen/src/format/format_io.dart';
import 'package:smithy_codegen/src/generator/allocator.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generated_library.dart';
import 'package:smithy_codegen/src/generator/visitors/library_visitor.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';

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
  String? serviceName,
  Pubspec? pubspec,
}) {
  var serviceShapes = ast.shapes.values.whereType<ServiceShape>();
  if (serviceName != null) {
    serviceShapes = [serviceShapes.single];
  }

  final List<GeneratedLibrary> libraries = [];

  for (final serviceShape in serviceShapes) {
    // Builds a service closure with just one service shape. All the other
    // shape can remain - they will not be generated for services which do
    // not reference them due to how LibraryVisitor works.
    final serviceClosure = ShapeMap({
      for (final entry
          in ast.shapes.entries.where((el) => el.value is! ServiceShape))
        entry.key: entry.value,
      serviceShape.shapeId: serviceShape,
    });

    final context = CodegenContext(
      smithyVersion: ast.version,
      metadata: ast.metadata.toMap(),
      shapes: serviceClosure,
      packageName: packageName,
      serviceShapeId: serviceShape.shapeId,
      serviceName: serviceName,
    );

    // Generate libraries for relevant shape types.
    final List<Shape> shapes = context.shapes.values.toList()
      ..sort((a, b) {
        // Build service shapes last, since they aggregate generated types.
        if (a is ServiceShape) {
          return 1;
        } else if (b is ServiceShape) {
          return -1;
        }
        return 0;
      });
    libraries.addAll(shapes.expand(
      (shape) =>
          shape.accept(LibraryVisitor(context)) ??
          const Iterable<GeneratedLibrary>.empty(),
    ));
  }

  // Emit Dart code and format
  return Map.fromEntries(libraries.map((generated) {
    final library = generated.library;
    return MapEntry(
      generated.smithyLibrary,
      '$header\n\n' + format('${library.accept(buildEmitter(library))}'),
    );
  }));
}
