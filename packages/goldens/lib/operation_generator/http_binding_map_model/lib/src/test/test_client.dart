// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.test_client;

import 'dart:async' as _i2;

import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i4;
import 'package:http_binding_map_model/src/test/operation/map_input.dart'
    as _i1;
import 'package:smithy/smithy.dart' as _i3;

class TestClient {
  TestClient();

  late final _mapInputOperation = _i1.MapInputOperation();

  _i2.Future<_i3.Unit> mapInputOperation(_i4.MapInputRequest input) {
    return _mapInputOperation.run(input);
  }
}
