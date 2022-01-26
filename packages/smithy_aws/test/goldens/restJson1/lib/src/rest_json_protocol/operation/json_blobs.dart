// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.json_blobs;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/json_blobs_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Blobs are base64 encoded
class JsonBlobsOperation extends _i1.HttpOperation<
    _i2.JsonBlobsInputOutput,
    _i2.JsonBlobsInputOutput,
    _i2.JsonBlobsInputOutput,
    _i2.JsonBlobsInputOutput> {
  /// Blobs are base64 encoded
  JsonBlobsOperation({Uri? baseUri, required this.region}) : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonBlobsInputOutput, _i2.JsonBlobsInputOutput,
          _i2.JsonBlobsInputOutput, _i2.JsonBlobsInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.JsonBlobsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/JsonBlobs';
      });
  @override
  int successCode([_i2.JsonBlobsInputOutput? output]) => 200;
  @override
  _i2.JsonBlobsInputOutput buildOutput(_i2.JsonBlobsInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonBlobsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i6.endpointResolver
      .resolveWithContext(_i6.sdkId, region, context)
      .endpoint;
}
