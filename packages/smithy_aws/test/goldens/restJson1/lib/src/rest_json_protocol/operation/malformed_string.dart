// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.malformed_string;

import 'dart:convert' as _i5;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_string_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedStringOperation extends _i1.HttpOperation<
    _i2.MalformedStringInputPayload,
    _i2.MalformedStringInput,
    _i1.Unit,
    _i1.Unit> {
  MalformedStringOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.MalformedStringInputPayload,
          _i2.MalformedStringInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedString';
        if (input.blob != null) {
          b.headers['amz-media-typed-header'] = _i5
              .base64Encode(_i5.utf8.encode(_i5.jsonEncode(input.blob!.value)));
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i7.endpointResolver
      .resolveWithContext(_i7.sdkId, region, context)
      .endpoint;
}
