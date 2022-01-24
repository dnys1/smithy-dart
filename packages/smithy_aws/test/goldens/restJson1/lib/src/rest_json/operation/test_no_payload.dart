// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.test_no_payload;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/test_no_payload_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example operation serializes a request without an HTTP body.
///
/// These tests are to ensure we do not attach a body or related headers
/// (Content-Length, Content-Type) to operations that semantically
/// cannot produce an HTTP body.
///
class TestNoPayloadOperation extends _i1.HttpOperation<
    _i2.TestNoPayloadInputOutputPayload,
    _i2.TestNoPayloadInputOutput,
    _i2.TestNoPayloadInputOutputPayload,
    _i2.TestNoPayloadInputOutput> {
  TestNoPayloadOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.TestNoPayloadInputOutputPayload,
          _i2.TestNoPayloadInputOutput,
          _i2.TestNoPayloadInputOutputPayload,
          _i2.TestNoPayloadInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i3.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.TestNoPayloadInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/no_payload';
        if (input.testId != null) {
          if (input.testId!.isNotEmpty) {
            b.headers['X-Amz-Test-Id'] = input.testId!;
          }
        }
      });
  @override
  int successCode([_i2.TestNoPayloadInputOutput? output]) => 200;
  @override
  _i2.TestNoPayloadInputOutput buildOutput(
          _i2.TestNoPayloadInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.TestNoPayloadInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
