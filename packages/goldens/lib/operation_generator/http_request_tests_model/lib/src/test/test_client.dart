// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.test_client;

import 'dart:async' as _i1;

import 'package:http_request_tests_model/src/test/model/say_hello_input.dart'
    as _i2;
import 'package:http_request_tests_model/src/test/operation/say_hello.dart'
    as _i3;

class TestClient {
  TestClient();

  _i1.Future<void> sayHello(_i2.SayHelloInput input) {
    return _i3.SayHelloOperation().run(input);
  }
}
