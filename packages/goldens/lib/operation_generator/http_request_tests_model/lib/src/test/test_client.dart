// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.test_client;

import 'dart:async' as _i2;

import 'package:http_request_tests_model/src/test/model/say_hello_input.dart'
    as _i3;
import 'package:http_request_tests_model/src/test/operation/say_hello.dart'
    as _i1;

class TestClient {
  TestClient();

  late final _sayHelloOperation = _i1.SayHelloOperation();

  _i2.Future<void> sayHelloOperation(_i3.SayHelloInput input) {
    return _sayHelloOperation.run(input);
  }
}
