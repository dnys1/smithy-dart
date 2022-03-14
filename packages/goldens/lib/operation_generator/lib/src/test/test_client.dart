// Generated code. DO NOT MODIFY.

library operation_generator.test.test_client;

import 'dart:async' as _i1;

import 'package:operation_generator/src/test/model/map_input_request.dart'
    as _i2;
import 'package:operation_generator/src/test/operation/map_input_operation.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i3;

class TestClient {
  const TestClient({required Uri baseUri}) : _baseUri = baseUri;

  final Uri _baseUri;

  _i1.Future<void> mapInput(_i2.MapInputRequest input,
      {_i3.HttpClient? client}) {
    return _i4.MapInputOperation(baseUri: _baseUri).run(input, client: client);
  }
}
