import 'dart:convert';
import 'dart:io';

import 'package:file/local.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/pubspec.dart';
import 'package:smithy_codegen/src/util/recase.dart';

const modelsDir = 'test/models';
const skipProtocols = [
  'shared',
];

Future<void> main(List<String> args) async {
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
    if (skipProtocols.contains(protocolName)) {
      continue;
    }
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
    );

    final Set<String> dependencies = {};
    for (var library in libraries) {
      final smithyLibrary = library.smithyLibrary;
      final outPath = path.join(outputPath, smithyLibrary.projectRelativePath);
      final output = library.emit();
      dependencies.addAll(library.dependencies);
      File(outPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(output);
    }

    // Create dummy pubspec
    final pubspecPath = path.join(outputPath, 'pubspec.yaml');
    final pubspec = Pubspec(packageName);
    final localSmithyPath = Directory.current.uri.resolve('..').path;
    final pubspecYaml = PubspecGenerator(
      pubspec,
      dependencies,
      smithyPath: path.relative(localSmithyPath, from: outputPath),
    ).generate();
    File(pubspecPath).writeAsStringSync(pubspecYaml);

    // Create analysis options
    final analysisOptionsPath = path.join(outputPath, 'analysis_options.yaml');
    File(analysisOptionsPath).writeAsStringSync('''
include: package:lints/recommended.yaml

analyzer:
  exclude:
    - test/**
''');

    // Create mono_pkg for testing
    final monoPkgPath = path.join(outputPath, 'mono_pkg.yaml');
    File(monoPkgPath).writeAsStringSync('''
sdk:
  - stable
  - dev

stages:
  - analyze_and_format:
    - group:
      - format
      - analyze: --fatal-infos .
  - unit_test:
    - group:
      - test:
      - test: -p chrome
    ''');

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
    final buildRunnerCmd = await Process.start(
      'dart',
      [
        'run',
        'build_runner',
        'build',
        '--delete-conflicting-outputs',
      ],
      workingDirectory: outputPath,
    );
    buildRunnerCmd.stdout
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(stdout.writeln);
    buildRunnerCmd.stderr
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(stderr.writeln);
    final exitCode = await buildRunnerCmd.exitCode;
    if (exitCode != 0) {
      stderr.write(
        '`dart run build_runner build` failed for $outputPath: $exitCode.',
      );
      exit(exitCode);
    }
  }
}
