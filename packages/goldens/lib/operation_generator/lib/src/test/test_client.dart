// Generated code. DO NOT MODIFY.

library operation_generator.test.test_client;

import 'dart:async' as _i1;

import 'package:operation_generator/src/test/model/map_input_request.dart'
    as _i2;
import 'package:operation_generator/src/test/operation/map_input.dart' as _i3;

class TestClient {
  const TestClient({required this.baseUri});

  final Uri baseUri;

  _i1.Future<void> mapInput(_i2.MapInputRequest input) {
    return _i3.MapInputOperation(baseUri: baseUri).run(input);
  }
}
