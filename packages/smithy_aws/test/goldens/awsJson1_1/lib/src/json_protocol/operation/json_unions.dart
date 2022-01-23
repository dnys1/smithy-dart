// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.json_unions;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/union_input_output.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This operation uses unions for inputs and outputs.
class JsonUnionsOperation extends _i1.HttpOperation<_i2.UnionInputOutput,
    _i2.UnionInputOutput, _i2.UnionInputOutput, _i2.UnionInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.UnionInputOutput, _i2.UnionInputOutput,
          _i2.UnionInputOutput, _i2.UnionInputOutput>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonProtocol.JsonUnions')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.UnionInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i2.UnionInputOutput? output]) => 200;
  @override
  _i2.UnionInputOutput buildOutput(
          _i2.UnionInputOutput payload, _i5.AWSStreamedHttpResponse response) =>
      _i2.UnionInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
