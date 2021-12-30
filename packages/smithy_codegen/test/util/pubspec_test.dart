import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/src/util/pubspec.dart';
import 'package:smithy_codegen/src/version.dart';
import 'package:test/test.dart';

void main() {
  group('Pubspec', () {
    test('toYaml', () {
      const settings = {
        'name': 'example',
        'version': '0.1.0',
      };

      const expected = '''
name: example
description: Example client SDK
version: 0.1.0

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
  smithy: ^$packageVersion

dev_dependencies:
  lints: ^1.0.0
  test: ^1.16.0
''';

      expect(Pubspec.fromJson(settings).toYaml(), equals(expected));
    });
  });
}
