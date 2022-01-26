// Generated code. DO NOT MODIFY.

library documentation.test.test_client;

import 'dart:async' as _i1;

import 'package:documentation/src/test/model/get_foo_input.dart' as _i2;
import 'package:documentation/src/test/operation/get_foo.dart' as _i3;

/// See also:
/// - [Homepage](https://www.example.com/)
/// - [API Reference](https://www.example.com/api-ref)

class TestClient {
  /// See also:
  /// - [Homepage](https://www.example.com/)
  /// - [API Reference](https://www.example.com/api-ref)

  const TestClient({required this.baseUri});

  @override
  final Uri baseUri;

  _i1.Future<void> getFoo(_i2.GetFooInput input) {
    return _i3.GetFooOperation(baseUri: baseUri).run(input);
  }
}
