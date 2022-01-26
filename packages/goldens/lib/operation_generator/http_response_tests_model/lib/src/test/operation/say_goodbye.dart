// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.operation.say_goodbye;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:http_response_tests_model/src/test/common/serializers.dart'
    as _i5;
import 'package:http_response_tests_model/src/test/model/invalid_greeting.dart'
    as _i7;
import 'package:http_response_tests_model/src/test/model/say_goodbye_input.dart'
    as _i2;
import 'package:http_response_tests_model/src/test/model/say_goodbye_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class SayGoodbyeOperation extends _i1.HttpOperation<_i2.SayGoodbyeInput,
    _i2.SayGoodbyeInput, _i3.SayGoodbyeOutputPayload, _i3.SayGoodbyeOutput> {
  SayGoodbyeOperation({required this.baseUri});

  @override
  late final List<
      _i1.HttpProtocol<_i2.SayGoodbyeInput, _i2.SayGoodbyeInput,
          _i3.SayGoodbyeOutputPayload, _i3.SayGoodbyeOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'GoodbyeService.SayGoodbye')
        ])
  ];

  @override
  final Uri baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.SayGoodbyeInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.SayGoodbyeOutput? output]) => 200;
  @override
  _i3.SayGoodbyeOutput buildOutput(_i3.SayGoodbyeOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.SayGoodbyeOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(namespace: 'smithy.example', shape: 'InvalidGreeting'),
            _i1.ErrorKind.client,
            _i7.InvalidGreeting,
            statusCode: 400,
            builder: _i7.InvalidGreeting.fromResponse)
      ];
}
