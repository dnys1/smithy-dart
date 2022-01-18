// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.operation.say_goodbye;

import 'package:http_response_tests_model/src/test/model/invalid_greeting.dart'
    as _i6;
import 'package:http_response_tests_model/src/test/model/say_goodbye_input.dart'
    as _i2;
import 'package:http_response_tests_model/src/test/model/say_goodbye_output.dart'
    as _i3;
import 'package:http_response_tests_model/src/test/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class SayGoodbyeOperation extends _i1.HttpOperation<_i2.SayGoodbyeInputPayload,
    _i2.SayGoodbyeInput, _i3.SayGoodbyeOutputPayload, _i3.SayGoodbyeOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.SayGoodbyeInputPayload, _i2.SayGoodbyeInput,
          _i3.SayGoodbyeOutputPayload, _i3.SayGoodbyeOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.SayGoodbyeInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i3.SayGoodbyeOutput buildOutput(
          _i3.SayGoodbyeOutputPayload payload, _i1.HttpResponse response) =>
      _i3.SayGoodbyeOutput((b) {});
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(_i1.ErrorKind.client, _i6.InvalidGreeting,
            statusCode: 400)
      ];
}
