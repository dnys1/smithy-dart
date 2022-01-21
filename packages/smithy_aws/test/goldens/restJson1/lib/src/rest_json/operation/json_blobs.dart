// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_blobs;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/json_blobs_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Blobs are base64 encoded
class JsonBlobsOperation extends _i1.HttpOperation<
    _i2.JsonBlobsInputOutputPayload,
    _i2.JsonBlobsInputOutput,
    _i2.JsonBlobsInputOutputPayload,
    _i2.JsonBlobsInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.JsonBlobsInputOutputPayload,
          _i2.JsonBlobsInputOutput,
          _i2.JsonBlobsInputOutputPayload,
          _i2.JsonBlobsInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.JsonBlobsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/JsonBlobs';
        b.successCode = 200;
      });
  @override
  _i2.JsonBlobsInputOutput buildOutput(_i2.JsonBlobsInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonBlobsInputOutput((b) {
        b.data = payload.data;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
