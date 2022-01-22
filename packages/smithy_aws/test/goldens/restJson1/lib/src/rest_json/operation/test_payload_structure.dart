// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.test_payload_structure;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/payload_config.dart' as _i2;
import 'package:rest_json1/src/rest_json/model/test_payload_structure_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example operation serializes a payload targeting a structure.
///
/// This enforces the same requirements as TestBodyStructure
/// but with the body specified by the @httpPayload trait.
///
class TestPayloadStructureOperation extends _i1.HttpOperation<
    _i2.PayloadConfig,
    _i3.TestPayloadStructureInputOutput,
    _i2.PayloadConfig,
    _i3.TestPayloadStructureInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.PayloadConfig, _i3.TestPayloadStructureInputOutput,
          _i2.PayloadConfig, _i3.TestPayloadStructureInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.TestPayloadStructureInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/payload';
        b.successCode = 200;
        if (input.testId != null) {
          b.headers['x-amz-test-id'] = input.testId!;
        }
      });
  @override
  _i3.TestPayloadStructureInputOutput buildOutput(
          _i2.PayloadConfig? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.TestPayloadStructureInputOutput((b) {
        if (payload != null) {
          b.payloadConfig.replace(payload);
        }
        if (response.headers['x-amz-test-id'] != null) {
          b.testId = response.headers['x-amz-test-id']!;
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
