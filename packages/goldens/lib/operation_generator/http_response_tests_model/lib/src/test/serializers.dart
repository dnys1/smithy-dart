// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.serializers;

import 'package:built_value/serializer.dart';
import 'package:http_response_tests_model/src/test/model/invalid_greeting.dart'
    as _i2;
import 'package:http_response_tests_model/src/test/model/say_goodbye_input.dart'
    as _i4;
import 'package:http_response_tests_model/src/test/model/say_goodbye_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.InvalidGreeting.serializers,
  ..._i3.SayGoodbyeOutput.serializers,
  ..._i4.SayGoodbyeInput.serializers
];
final Map<FullType, Function> builderFactories = {};
