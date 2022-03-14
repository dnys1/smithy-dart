import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_test/src/common.dart';
import 'package:test/test.dart';

/// Loads goldens for [groupName]/[testName], e.g. `Enum Generator/Create Enum`
///
/// Returns a mapping from library name to library definition.
Map<String, String> loadGoldens(String groupName, String testName) {
  final packageName = testName.snakeCase;
  final dirUri = Directory.current.uri.resolve(
    '../goldens/lib/${groupName.snakeCase}/$packageName/lib',
  );
  final dir = Directory.fromUri(dirUri);

  final libraries = <String, String>{};
  for (final entity in dir.listSync(recursive: true)) {
    if (entity.statSync().type == FileSystemEntityType.directory) {
      continue;
    }
    if (entity.path.endsWith('.g.dart')) {
      continue;
    }
    final libraryName = SmithyLibraryX.fromPath(
      packageName,
      path.relative(entity.path, from: dir.path),
    ).libraryName;
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
      final libraries = Map.fromEntries(generateForAst(
        ast,
        packageName: testName.snakeCase,
        serviceName: 'test',
      ).map((library) {
        return MapEntry(library.smithyLibrary.libraryName, library.emit());
      }));
      expect(libraries, equals(goldens));
    }),
  );
}
