import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/version.dart';

extension PubspecYaml on Pubspec {
  String toYaml([String? smithyPath]) {
    return '''
name: $name
description: ${name.capitalized} client SDK
version: ${version?.canonicalizedVersion ?? '1.0.0'}
${smithyPath == null ? '' : 'publish_to: none'}

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
  smithy: ${smithyPath == null ? '^$packageVersion' : ''}
    ${smithyPath != null ? 'path: $smithyPath' : ''}

dev_dependencies:
  build_runner: ^2.0.0
  built_value_generator: ^8.0.0
  lints: ^1.0.0
  test: ^1.16.0
''';
  }
}
