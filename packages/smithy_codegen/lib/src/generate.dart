import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/visitors/library_visitor.dart';

/// Header which prefixes all generated files.
const header = '// Generated code. DO NOT MODIFY.';

/// The default emitter for codegen operations.
DartEmitter buildEmitter(Allocator allocator) => DartEmitter(
      allocator: allocator,
      orderDirectives: true,
      useNullSafetySyntax: true,
    );

/// Generates a Dart file for each of the relevant shape types in [ast].
///
/// Returns a map from the library to its formatted definition file.
List<GeneratedLibrary> generateForAst(
  SmithyAst ast, {
  required String packageName,
  String? serviceName,
  Pubspec? pubspec,
  String? basePath,
  Iterable<ShapeId> includeShapes = const [],
  Iterable<ShapeId> additionalShapes = const [],
  bool generateServer = false,
  bool useBuilders = false,
}) {
  var serviceShapes = ast.shapes.values.whereType<ServiceShape>();
  if (serviceName != null) {
    if (serviceShapes.length != 1) {
      throw CodegenException(
        'When specifying a service name, it is assumed that only one service is '
        'to be generated. However, the provided AST contains '
        '${serviceShapes.length} service shapes.',
      );
    }
    serviceShapes = [serviceShapes.first];
  }

  final Set<GeneratedLibrary> libraries = {};

  for (final serviceShape in serviceShapes) {
    // Builds a service closure with just one service shape. All the other
    // shapes can remain - they will not be generated for services which do
    // not reference them due to how LibraryVisitor works.
    final serviceClosureShapes = ast.shapes.entries.where((el) {
      if (el.value is OperationShape) {
        return includeShapes.isEmpty || includeShapes.contains(el.key);
      }
      return true;
    });
    final serviceClosure = ShapeMap(Map.fromEntries(serviceClosureShapes));

    final context = CodegenContext(
      smithyVersion: ast.version,
      metadata: ast.metadata.toMap(),
      shapes: serviceClosure,
      packageName: packageName,
      basePath: basePath,
      serviceShapeId: serviceShape.shapeId,
      serviceName: serviceShapes.length == 1 ? serviceName : null,
      additionalShapes: additionalShapes,
      generateServer: generateServer,
      useBuilders: useBuilders,
    );

    // Generate libraries for relevant shape types.
    //
    // Build service shapes last, since they aggregate generated types.
    final operations = context.shapes.values.whereType<OperationShape>();
    final visitor = LibraryVisitor(context);
    libraries.addAll([
      ...operations,
      ...additionalShapes.map(context.shapeFor),
      serviceShape
    ].expand((shape) => shape.accept(visitor) ?? const []));
  }

  return libraries.toList();
}
