// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.media_type_header;

import 'dart:convert' as _i6;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1/src/rest_json/model/media_type_header_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/model/media_type_header_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example ensures that mediaType strings are base64 encoded in headers.
class MediaTypeHeaderOperation extends _i1.HttpOperation<
    _i2.MediaTypeHeaderInputPayload,
    _i2.MediaTypeHeaderInput,
    _i3.MediaTypeHeaderOutputPayload,
    _i3.MediaTypeHeaderOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.MediaTypeHeaderInputPayload,
          _i2.MediaTypeHeaderInput,
          _i3.MediaTypeHeaderOutputPayload,
          _i3.MediaTypeHeaderOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoContentLength(),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.MediaTypeHeaderInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/MediaTypeHeader';
        if (input.json != null) {
          b.headers['X-Json'] = _i6
              .base64Encode(_i6.utf8.encode(_i6.jsonEncode(input.json!.value)));
        }
      });
  @override
  int successCode([_i3.MediaTypeHeaderOutput? output]) => 200;
  @override
  _i3.MediaTypeHeaderOutput buildOutput(
          _i3.MediaTypeHeaderOutputPayload payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.MediaTypeHeaderOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
