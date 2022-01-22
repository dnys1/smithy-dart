// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_payload_traits_with_media_type;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/http_payload_traits_with_media_type_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples uses a `@mediaType` trait on the payload to force a custom
/// content-type to be serialized.
class HttpPayloadTraitsWithMediaTypeOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.HttpPayloadTraitsWithMediaTypeInputOutput,
    _i2.Uint8List,
    _i3.HttpPayloadTraitsWithMediaTypeInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Uint8List,
          _i3.HttpPayloadTraitsWithMediaTypeInputOutput,
          _i2.Uint8List,
          _i3.HttpPayloadTraitsWithMediaTypeInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [],
        mediaType: 'text/plain')
  ];

  @override
  _i1.HttpRequest buildRequest(
          _i3.HttpPayloadTraitsWithMediaTypeInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/HttpPayloadTraitsWithMediaType';
        b.successCode = 200;
        if (input.foo != null) {
          b.headers['X-Foo'] = input.foo!;
        }
      });
  @override
  _i3.HttpPayloadTraitsWithMediaTypeInputOutput buildOutput(
          _i2.Uint8List? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPayloadTraitsWithMediaTypeInputOutput((b) {
        b.blob = payload;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
