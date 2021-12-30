import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/model/smithy_library.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:test/test.dart';

/// Creates an AST from [shapes].
SmithyAst createAst(List<Shape> shapes) {
  return SmithyAst(
    (b) =>
        b..shapes = ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
  );
}

/// Creates a codegen context for test cases.
CodegenContext createTestContext(
  List<Shape> shapes, {
  String packageName = 'example',
  String serviceName = 'Test',
}) {
  return CodegenContext(
    shapes: ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
    packageName: packageName,
    serviceName: serviceName,
  );
}

/// Loads goldens for [groupName]/[testName], e.g. `Enum Generator/Create Enum`
///
/// Returns a mapping from library name to library definition.
Map<String, String> loadGoldens(String groupName, String testName) {
  final dirUri = Directory.current.uri.resolve(
    'test/goldens/lib/${groupName.snakeCase}/${testName.snakeCase}',
  );
  final dir = Directory.fromUri(dirUri);

  final libraries = <String, String>{};
  for (final entity in dir.listSync()) {
    final libraryName = path.basenameWithoutExtension(entity.path);
    final libraryDefinition = File.fromUri(entity.uri).readAsStringSync();
    libraries[libraryName] = libraryDefinition;
  }

  return libraries;
}

/// Tests by loading goldens for [testName] and comparing them with those
/// generated from [shapes].
///
/// Wraps the built-in [test] function.
void testGolden(
  String groupName,
  String testName,
  List<Shape> shapes,
) {
  group(
    groupName,
    () => test(testName, () {
      final goldens = loadGoldens(groupName, testName);
      final ast = createAst(shapes);
      final libraries = generateForAst(
        ast,
        packageName: 'goldens',
        serviceName: 'test',
      ).map((library, definition) {
        return MapEntry(library.libraryName, definition);
      });
      expect(libraries, equals(goldens));
    }),
  );
}
