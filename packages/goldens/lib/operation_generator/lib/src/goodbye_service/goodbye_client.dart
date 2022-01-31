// Generated code. DO NOT MODIFY.

library operation_generator.goodbye_service.goodbye_client;

import 'dart:async' as _i1;

import 'package:operation_generator/src/goodbye_service/model/say_goodbye_input.dart'
    as _i3;
import 'package:operation_generator/src/goodbye_service/model/say_goodbye_output.dart'
    as _i2;
import 'package:operation_generator/src/goodbye_service/model/say_hello_input.dart'
    as _i5;
import 'package:operation_generator/src/goodbye_service/operation/say_goodbye.dart'
    as _i4;
import 'package:operation_generator/src/goodbye_service/operation/say_hello.dart'
    as _i6;

class GoodbyeClient {
  const GoodbyeClient({required this.baseUri});

  final Uri baseUri;

  _i1.Future<_i2.SayGoodbyeOutput> sayGoodbye(_i3.SayGoodbyeInput input) {
    return _i4.SayGoodbyeOperation(baseUri: baseUri).run(input);
  }

  _i1.Future<void> sayHello(_i5.SayHelloInput input) {
    return _i6.SayHelloOperation(baseUri: baseUri).run(input);
  }
}
