// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.test_client;

import 'dart:async' as _i1;

import 'package:http_response_tests_model/src/test/model/say_goodbye_input.dart'
    as _i3;
import 'package:http_response_tests_model/src/test/model/say_goodbye_output.dart'
    as _i2;
import 'package:http_response_tests_model/src/test/operation/say_goodbye.dart'
    as _i4;

class TestClient {
  TestClient();

  _i1.Future<_i2.SayGoodbyeOutput> sayGoodbye(_i3.SayGoodbyeInput input) {
    return _i4.SayGoodbyeOperation().run(input);
  }
}
