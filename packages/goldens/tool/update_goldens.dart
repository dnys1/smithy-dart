import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:smithy_codegen/smithy_codegen.dart';

const modelsDir = 'models';

void main() {
  final modelsPath = path.join(Directory.current.path, modelsDir);
  final dir = Directory(modelsPath);
  for (var modelEnt in dir.listSync(recursive: true)) {
    final modelPath = path.relative(modelEnt.path);
    final outputPath = path.join(
      'lib',
      path.dirname(modelPath).split('/').last,
      path.basenameWithoutExtension(modelPath),
    );

    final result = Process.runSync(
      'docker',
      [
        'run',
        '--rm',
        '-v',
        '$modelsPath:/home/$modelsDir',
        'dnys1/smithy:latest',
        'ast',
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
    final ast = result.stdout as String;

    final libraries = generateForAst(
      parseAstJson(ast),
      packageName: 'goldens',
      serviceName: 'Test',
    );

    libraries.forEach((library, definition) {
      final outPath = path.join(outputPath, 'lib', library.libRelativePath);
      File(outPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(definition);
    });
  }
}
