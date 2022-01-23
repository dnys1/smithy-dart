import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/version.dart';
import 'package:path/path.dart' as path;

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
    ${smithyPath != null ? 'path: ${path.join(smithyPath, 'smithy')}' : ''}
  smithy_aws: ${smithyPath == null ? '^$packageVersion' : ''}
    ${smithyPath != null ? 'path: ${path.join(smithyPath, 'smithy_aws')}' : ''}
  uuid: ^3.0.0

dev_dependencies:
  build_runner: ^2.0.0
  built_value_generator: ^8.0.0
  lints: ^1.0.0
  smithy_test: ${smithyPath == null ? '^$packageVersion' : ''}
    ${smithyPath != null ? 'path: ${path.join(smithyPath, 'smithy_test')}' : ''}
  test: ^1.16.0
''';
  }
}
