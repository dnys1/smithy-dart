// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.greeting_with_errors;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/complex_error.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/model/foo_error.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/model/invalid_greeting.dart'
    as _i8;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This operation has three possible return values:
///
/// 1. A successful response in the form of GreetingWithErrorsOutput
/// 2. An InvalidGreeting error.
/// 3. A ComplexError error.
///
/// Implementations must be able to successfully take a response and
/// properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutputPayload, _i2.GreetingWithErrorsOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutputPayload,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.GreetingWithErrors')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i2.GreetingWithErrorsOutput buildOutput(
          _i2.GreetingWithErrorsOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.GreetingWithErrorsOutput((b) {
        b.greeting = payload.greeting;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'ComplexError'),
            _i1.ErrorKind.client,
            _i6.ComplexError),
        _i1.SmithyError(
            _i1.ShapeId(namespace: 'aws.protocoltests.json', shape: 'FooError'),
            _i1.ErrorKind.server,
            _i7.FooError),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'InvalidGreeting'),
            _i1.ErrorKind.client,
            _i8.InvalidGreeting)
      ];
}
