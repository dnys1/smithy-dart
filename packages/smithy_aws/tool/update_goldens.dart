import 'dart:convert';
import 'dart:io';

import 'package:file/local.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/pubspec.dart';
import 'package:smithy_codegen/src/util/recase.dart';

const modelsDir = 'test/models';

void main(List<String> args) {
  final modelsPath = path.join(Directory.current.path, modelsDir);
  final glob = Glob(args.length == 1 ? args[0] : '*');
  final entites = glob.listFileSystemSync(
    const LocalFileSystem(),
    root: modelsPath,
  );
  for (var modelEnt in entites) {
    if (modelEnt.statSync().type != FileSystemEntityType.directory) {
      continue;
    }
    final modelPath = path.relative(modelEnt.path);
    final protocolName = path.basename(modelPath);
    final outputPath = path.join('test', 'goldens', protocolName);
    final dir = Directory(outputPath);
    if (dir.existsSync()) {
      dir.deleteSync(recursive: true);
    }

    stdout.writeln('Generating AST for $modelPath');

    // TOOO: Improve performance with isolates
    final result = Process.runSync(
      'docker',
      [
        'run',
        '--rm',
        '-v',
        '$modelsPath:/home/$modelsDir',
        'smithy-playground',
        'smithy',
        'ast',
        '-d',
        '/smithy/lib/traits',
        '/home/$modelsDir/shared',
        '/home/$modelPath',
      ],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (result.exitCode != 0) {
      stderr.write('Could not generate model for $modelPath: ');
      stderr.writeln(result.stdout);
      stderr.writeln(result.stderr);
      exit(result.exitCode);
    }
    final astJson = result.stdout as String;

    final packageName = protocolName.snakeCase;
    final ast = parseAstJson(astJson);

    final libraries = generateForAst(
      ast,
      packageName: packageName,
      serviceName:
          ast.shapes.values.whereType<ServiceShape>().single.shapeId.shape,
    );

    libraries.forEach((library, definition) {
      final outPath = path.join(outputPath, library.projectRelativePath);
      File(outPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(definition);
    });

    // Create dummy pubspec
    final pubspecPath = path.join(outputPath, 'pubspec.yaml');
    final pubspec = Pubspec(packageName);
    final localSmithyPath = Directory.current.uri.resolve('..').path;
    File(pubspecPath).writeAsStringSync(
      pubspec.toYaml(path.relative(localSmithyPath, from: outputPath)),
    );

    // Create analysis options
    final analysisOptionsPath = path.join(outputPath, 'analysis_options.yaml');
    File(analysisOptionsPath)
        .writeAsStringSync('include: package:lints/recommended.yaml');

    // Run `dart pub get`
    final pubGetRes = Process.runSync(
      'dart',
      [
        'pub',
        'get',
      ],
      workingDirectory: outputPath,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (pubGetRes.exitCode != 0) {
      stderr.write('`dart pub get` failed for $outputPath: ');
      stderr.writeln(pubGetRes.stdout);
      stderr.writeln(pubGetRes.stderr);
      exit(pubGetRes.exitCode);
    }

    // Run built_value generator
    final buildRunnerRes = Process.runSync(
      'dart',
      [
        'run',
        'build_runner',
        'build',
        '--delete-conflicting-outputs',
      ],
      workingDirectory: outputPath,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (buildRunnerRes.exitCode != 0) {
      stderr.write('`dart run build_runner build` failed for $outputPath: ');
      stderr.writeln(buildRunnerRes.stdout);
      stderr.writeln(buildRunnerRes.stderr);
      exit(buildRunnerRes.exitCode);
    }
  }
}
