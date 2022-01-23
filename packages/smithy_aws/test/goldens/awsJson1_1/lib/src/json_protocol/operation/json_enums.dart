// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.json_enums;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/json_enums_input_output.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example serializes enums as top level properties, in lists, sets, and maps.
class JsonEnumsOperation extends _i1.HttpOperation<
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonEnumsInputOutput, _i2.JsonEnumsInputOutput,
          _i2.JsonEnumsInputOutput, _i2.JsonEnumsInputOutput>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonProtocol.JsonEnums')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.JsonEnumsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i2.JsonEnumsInputOutput? output]) => 200;
  @override
  _i2.JsonEnumsInputOutput buildOutput(_i2.JsonEnumsInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonEnumsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
