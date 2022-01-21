// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.test_payload_blob;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/test_payload_blob_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example operation serializes a payload targeting a blob.
///
/// The Blob shape is not structured content and we cannot
/// make assumptions about what data will be sent. This test ensures
/// only a generic "Content-Type: application/octet-stream" header
/// is used, and that we are not treating an empty body as an
/// empty JSON document.
///
class TestPayloadBlobOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.TestPayloadBlobInputOutput,
    _i2.Uint8List,
    _i3.TestPayloadBlobInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, _i3.TestPayloadBlobInputOutput,
          _i2.Uint8List, _i3.TestPayloadBlobInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.TestPayloadBlobInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/blob_payload';
        b.successCode = 200;
        if (input.contentType != null) {
          b.headers['Content-Type'] = input.contentType!;
        }
      });
  @override
  _i3.TestPayloadBlobInputOutput buildOutput(
          _i2.Uint8List? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.TestPayloadBlobInputOutput((b) {
        b.data = payload;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
