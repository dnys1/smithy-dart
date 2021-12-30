import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generated/codegen.pb.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/visitors/library.dart';
import 'package:smithy_codegen/src/parse.dart';

/// The default emitter for codegen operations.
DartEmitter get kDefaultEmitter => DartEmitter(
      allocator: Allocator(),
      orderDirectives: true,
      useNullSafetySyntax: true,
    );

/// Generates a Dart file for each of the relevant shape types in [request].
///
/// Returns a map from the library name to its formatted definition file.
Map<String, String> generateForServiceRequest(ServiceRequest request) {
  final json = request.closureJson;
  final SmithyAst ast = parseAstJson(json);

  final context = CodegenContext(
    shapes: ast.shapes,
    packageName: request.packageName,
    serviceName: request.serviceName,
  );

  // Generate libraries for relevant shape types.
  var libraries = ast.shapes.values
      .map((shape) => shape.accept(LibraryVisitor(context)))
      .whereType<Library>()
      .toList();

  // Emit Dart code and format
  final formatter = DartFormatter(fixes: StyleFix.all);
  return Map.fromEntries(libraries.map((library) {
    return MapEntry(
      library.name!,
      formatter.format('${library.accept(kDefaultEmitter)}'),
    );
  }));
}
