// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.omits_null_serializes_empty_string;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Omits null, but serializes empty string value.
class OmitsNullSerializesEmptyStringOperation extends _i1.HttpOperation<
    _i2.OmitsNullSerializesEmptyStringInputPayload,
    _i2.OmitsNullSerializesEmptyStringInput,
    _i1.Unit,
    _i1.Unit> {
  OmitsNullSerializesEmptyStringOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.OmitsNullSerializesEmptyStringInputPayload,
          _i2.OmitsNullSerializesEmptyStringInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.OmitsNullSerializesEmptyStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/OmitsNullSerializesEmptyString';
        if (input.nullValue != null) {
          b.queryParameters.add('Null', input.nullValue!);
        }
        if (input.emptyString != null) {
          b.queryParameters.add('Empty', input.emptyString!);
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i6.endpointResolver
      .resolveWithContext(_i6.sdkId, region, context)
      .endpoint;
}
