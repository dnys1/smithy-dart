// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_content_type_with_payload;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/malformed_content_type_with_payload_input.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class MalformedContentTypeWithPayloadOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.MalformedContentTypeWithPayloadInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, _i3.MalformedContentTypeWithPayloadInput,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [],
        mediaType: 'image/jpeg')
  ];

  @override
  _i1.HttpRequest buildRequest(
          _i3.MalformedContentTypeWithPayloadInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedContentTypeWithPayload';
        b.successCode = 200;
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
