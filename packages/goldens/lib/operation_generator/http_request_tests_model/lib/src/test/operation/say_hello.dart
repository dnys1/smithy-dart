// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.operation.say_hello;

import 'package:http_request_tests_model/src/test/model/say_hello_input.dart'
    as _i2;
import 'package:http_request_tests_model/src/test/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class SayHelloOperation
    extends _i1.HttpOperation<_i2.SayHelloInput, _i2.SayHelloInput, _i1.Unit> {
  @override
  late final List<
          _i1.HttpProtocol<_i2.SayHelloInput, _i2.SayHelloInput, _i1.Unit>>
      protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.SayHelloInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
        b.hostPrefix = '{hostLabel}.prefix.';
        if (input.greeting != null) {
          b.headers['X-Greeting'] = input.greeting!;
        }
        if (input.query != null) {
          b.queryParameters.add('Hi', input.query!);
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
