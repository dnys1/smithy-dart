// Generated code. DO NOT MODIFY.

library operation_generator.hello_service.operation.say_hello;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:operation_generator/src/hello_service/common/serializers.dart'
    as _i4;
import 'package:operation_generator/src/hello_service/model/say_hello_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class SayHelloOperation extends _i1.HttpOperation<_i2.SayHelloInputPayload,
    _i2.SayHelloInput, _i1.Unit, _i1.Unit> {
  SayHelloOperation({required this.baseUri});

  @override
  late final List<
      _i1.HttpProtocol<_i2.SayHelloInputPayload, _i2.SayHelloInput, _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'HelloService.SayHello')
        ])
  ];

  @override
  final Uri baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.SayHelloInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
        b.hostPrefix = '{hostLabel}.prefix.';
        if (input.greeting != null) {
          if (input.greeting!.isNotEmpty) {
            b.headers['X-Greeting'] = input.greeting!;
          }
        }
        if (input.query != null) {
          b.queryParameters.add('Hi', input.query!);
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
