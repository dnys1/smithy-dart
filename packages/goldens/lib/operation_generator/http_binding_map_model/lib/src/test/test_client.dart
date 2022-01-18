// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.test_client;

import 'dart:async' as _i1;

import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i2;
import 'package:http_binding_map_model/src/test/operation/map_input.dart'
    as _i3;

class TestClient {
  TestClient();

  _i1.Future<void> mapInputOperation(_i2.MapInputRequest input) {
    return _i3.MapInputOperation().run(input);
  }
}
