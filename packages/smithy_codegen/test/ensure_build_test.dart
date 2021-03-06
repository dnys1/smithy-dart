@TestOn('vm')

import 'package:build_verify/build_verify.dart';
import 'package:test/test.dart';

void main() {
  test(
    'ensure_build',
    () => expectBuildClean(packageRelativeDirectory: 'packages/smithy_codegen'),
    timeout: const Timeout(Duration(minutes: 5)),
  );
}
