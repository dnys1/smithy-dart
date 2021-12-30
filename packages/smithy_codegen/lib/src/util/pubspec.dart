import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/version.dart';

extension PubspecYaml on Pubspec {
  String toYaml() {
    return '''
name: $name
description: ${name.capitalized} client SDK
version: ${version?.canonicalizedVersion ?? '1.0.0'}

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
  smithy: ^$packageVersion

dev_dependencies:
  lints: ^1.0.0
  test: ^1.16.0
''';
  }
}
