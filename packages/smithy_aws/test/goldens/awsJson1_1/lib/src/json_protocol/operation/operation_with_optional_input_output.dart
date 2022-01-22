// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.operation_with_optional_input_output;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i3;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class OperationWithOptionalInputOutputOperation extends _i1.HttpOperation<
    _i2.OperationWithOptionalInputOutputInput,
    _i2.OperationWithOptionalInputOutputInput,
    _i3.OperationWithOptionalInputOutputOutput,
    _i3.OperationWithOptionalInputOutputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.OperationWithOptionalInputOutputInput,
          _i2.OperationWithOptionalInputOutputInput,
          _i3.OperationWithOptionalInputOutputOutput,
          _i3.OperationWithOptionalInputOutputOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.OperationWithOptionalInputOutput')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(
          _i2.OperationWithOptionalInputOutputInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i3.OperationWithOptionalInputOutputOutput buildOutput(
          _i3.OperationWithOptionalInputOutputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.OperationWithOptionalInputOutputOutput((b) {});
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
