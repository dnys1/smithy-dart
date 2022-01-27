// Generated code. DO NOT MODIFY.

library reserved_names.test.test_client;

import 'dart:async' as _i1;

import 'package:reserved_names/src/test/model/get_foo_input.dart' as _i2;
import 'package:reserved_names/src/test/operation/get_foo.dart' as _i3;

class TestClient {
  const TestClient({required this.baseUri});

  @override
  final Uri baseUri;

  _i1.Future<void> getFoo(_i2.GetFooInput input) {
    return _i3.GetFooOperation(baseUri: baseUri).run(input);
  }
}
