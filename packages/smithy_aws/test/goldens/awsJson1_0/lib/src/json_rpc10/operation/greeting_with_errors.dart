// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.greeting_with_errors;

import 'package:aws_json1_0/src/json_rpc10/model/complex_error.dart' as _i6;
import 'package:aws_json1_0/src/json_rpc10/model/foo_error.dart' as _i7;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_output.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc10/model/invalid_greeting.dart' as _i8;
import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation has three possible return values:
///
/// 1. A successful response in the form of GreetingWithErrorsOutput
/// 2. An InvalidGreeting error.
/// 3. A ComplexError error.
///
/// Implementations must be able to successfully take a response and
/// properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<
    _i2.GreetingWithErrorsInputPayload,
    _i2.GreetingWithErrorsInput,
    _i3.GreetingWithErrorsOutputPayload,
    _i3.GreetingWithErrorsOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GreetingWithErrorsInputPayload,
          _i2.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsOutputPayload,
          _i3.GreetingWithErrorsOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithHeader('X-Amz-Target', 'JsonRpc10.GreetingWithErrors')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.GreetingWithErrorsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i3.GreetingWithErrorsOutput buildOutput(
          _i3.GreetingWithErrorsOutputPayload payload,
          _i1.HttpResponse response) =>
      _i3.GreetingWithErrorsOutput((b) {
        b.greeting = payload.greeting;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(_i1.ErrorKind.client, _i6.ComplexError,
            statusCode: 400),
        _i1.SmithyError(_i1.ErrorKind.server, _i7.FooError, statusCode: 500),
        _i1.SmithyError(_i1.ErrorKind.client, _i8.InvalidGreeting,
            statusCode: 400)
      ];
}
