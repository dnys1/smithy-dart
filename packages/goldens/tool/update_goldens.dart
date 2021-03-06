import 'dart:convert';
import 'dart:io';

import 'package:file/local.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

const modelsDir = 'models';
final modelsPath = path.join(Directory.current.path, modelsDir);
const skipProtocols = [
  'shared',
];

Future<void> main(List<String> args) async {
  final glob = Glob(args.length == 1 ? args[0] : '*');
  final entites = glob.listFileSystemSync(
    const LocalFileSystem(),
    root: modelsPath,
  );
  final futures = <Future>[];
  for (var modelEnt in entites) {
    if (modelEnt is! Directory) {
      continue;
    }
    futures.add(_generateFor(modelEnt));
  }
  await Future.wait<void>(futures);
}

Future<void> _generateFor(FileSystemEntity modelEnt) async {
  final modelPath = path.relative(modelEnt.path);
  final protocolName = path.basename(modelPath);
  if (skipProtocols.contains(protocolName)) {
    return;
  }
  final outputPath = path.join('lib', protocolName);
  final dir = Directory(outputPath);
  if (dir.existsSync()) {
    dir.deleteSync(recursive: true);
  }

  stdout.writeln('Generating AST for $modelPath');

  // TOOO: Improve performance with isolates
  final result = await Process.run(
    'docker',
    [
      'run',
      '--rm',
      '-v',
      '$modelsPath:/home/$modelsDir',
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
    additionalShapes: const [
      ShapeId(namespace: 'aws.protocoltests.config', shape: 'AwsConfig'),
    ],
    generateServer: true,
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
  errors:
    avoid_unused_constructor_parameters: ignore
    non_constant_identifier_names: ignore
''');

  // Create mono_pkg for testing
  final monoPkgPath = path.join(outputPath, 'mono_pkg.yaml');
  final dartTestPath = path.join(outputPath, 'dart_test.yaml');
  final monoPkg = StringBuffer('''
sdk:
  - stable
  - dev

stages:
  - analyze_and_format:
      - group:
          - format
          - analyze: --fatal-infos .
''');
  if (Directory(path.join(outputPath, 'test')).existsSync()) {
    monoPkg.write('''
  - unit_test:
      - test:
  - unit_test_native:
      - group:
          - test:
            os:
              - windows
              - macos
          - test: -p chrome
          - test: -p firefox
''');

    File(dartTestPath).writeAsStringSync('''
override_platforms:
  firefox:
    settings:
      arguments: -headless
''');
  }
  File(monoPkgPath).writeAsStringSync(monoPkg.toString());

  // Run `dart pub get`
  final pubGetRes = await Process.run(
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
