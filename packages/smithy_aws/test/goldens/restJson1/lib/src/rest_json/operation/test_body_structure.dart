// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.test_body_structure;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/test_body_structure_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example operation serializes a structure in the HTTP body.
///
/// It should ensure Content-Type: application/json is
/// used in all requests and that an "empty" body is
/// an empty JSON document ({}).
///
class TestBodyStructureOperation extends _i1.HttpOperation<
    _i2.TestBodyStructureInputOutputPayload,
    _i2.TestBodyStructureInputOutput,
    _i2.TestBodyStructureInputOutputPayload,
    _i2.TestBodyStructureInputOutput> {
  TestBodyStructureOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.TestBodyStructureInputOutputPayload,
          _i2.TestBodyStructureInputOutput,
          _i2.TestBodyStructureInputOutputPayload,
          _i2.TestBodyStructureInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          _i3.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.TestBodyStructureInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/body';
        if (input.testId != null) {
          if (input.testId!.isNotEmpty) {
            b.headers['x-amz-test-id'] = input.testId!;
          }
        }
      });
  @override
  int successCode([_i2.TestBodyStructureInputOutput? output]) => 200;
  @override
  _i2.TestBodyStructureInputOutput buildOutput(
          _i2.TestBodyStructureInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.TestBodyStructureInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
