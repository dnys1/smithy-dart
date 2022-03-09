// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.test_payload_structure_operation;

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/payload_config.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example operation serializes a payload targeting a structure.
///
/// This enforces the same requirements as TestBodyStructure
/// but with the body specified by the @httpPayload trait.
class TestPayloadStructureOperation extends _i1.HttpOperation<
    _i2.PayloadConfig,
    _i3.TestPayloadStructureInputOutput,
    _i2.PayloadConfig,
    _i3.TestPayloadStructureInputOutput> {
  /// This example operation serializes a payload targeting a structure.
  ///
  /// This enforces the same requirements as TestBodyStructure
  /// but with the body specified by the @httpPayload trait.
  TestPayloadStructureOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PayloadConfig, _i3.TestPayloadStructureInputOutput,
          _i2.PayloadConfig, _i3.TestPayloadStructureInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        requestInterceptors: [const _i1.WithContentLength()],
        responseInterceptors: [])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.TestPayloadStructureInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/payload';
        if (input.testId != null) {
          if (input.testId!.isNotEmpty) {
            b.headers['x-amz-test-id'] = input.testId!;
          }
        }
      });
  @override
  int successCode([_i3.TestPayloadStructureInputOutput? output]) => 200;
  @override
  _i3.TestPayloadStructureInputOutput buildOutput(
          _i2.PayloadConfig? payload, _i7.AWSStreamedHttpResponse response) =>
      _i3.TestPayloadStructureInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.TestPayloadStructureInputOutput> run(
      _i3.TestPayloadStructureInputOutput input,
      {Uri? baseUri,
      _i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i8.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}