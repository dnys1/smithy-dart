// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.empty_input_and_empty_output;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_output.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// The example tests how requests and responses are serialized when there's
/// no request or response payload because the operation has an empty input
/// and empty output structure that reuses the same shape. While this should
/// be rare, code generators must support this.
class EmptyInputAndEmptyOutputOperation extends _i1.HttpOperation<
    _i2.EmptyInputAndEmptyOutputInput,
    _i2.EmptyInputAndEmptyOutputInput,
    _i3.EmptyInputAndEmptyOutputOutput,
    _i3.EmptyInputAndEmptyOutputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.EmptyInputAndEmptyOutputInput,
          _i2.EmptyInputAndEmptyOutputInput,
          _i3.EmptyInputAndEmptyOutputOutput,
          _i3.EmptyInputAndEmptyOutputOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.EmptyInputAndEmptyOutput')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.EmptyInputAndEmptyOutputInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i3.EmptyInputAndEmptyOutputOutput buildOutput(
          _i3.EmptyInputAndEmptyOutputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.EmptyInputAndEmptyOutputOutput();
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
