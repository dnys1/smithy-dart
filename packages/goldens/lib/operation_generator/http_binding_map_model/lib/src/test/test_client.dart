// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.test_client;

import 'dart:async' as _i2;

import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i3;
import 'package:http_binding_map_model/src/test/operation/map_input.dart'
    as _i1;

class TestClient {
  TestClient();

  late final _mapInputOperation = _i1.MapInputOperation();

  _i2.Future<void> mapInputOperation(_i3.MapInputRequest input) {
    return _mapInputOperation.run(input);
  }
}
