// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_prefix_headers_in_response;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// Clients that perform this test extract all headers from the response.
class HttpPrefixHeadersInResponseOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInResponseInput,
    _i2.HttpPrefixHeadersInResponseInput,
    _i3.HttpPrefixHeadersInResponseOutputPayload,
    _i3.HttpPrefixHeadersInResponseOutput> {
  /// Clients that perform this test extract all headers from the response.
  HttpPrefixHeadersInResponseOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInResponseInput,
          _i2.HttpPrefixHeadersInResponseInput,
          _i3.HttpPrefixHeadersInResponseOutputPayload,
          _i3.HttpPrefixHeadersInResponseOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInResponseInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/HttpPrefixHeadersResponse';
      });
  @override
  int successCode([_i3.HttpPrefixHeadersInResponseOutput? output]) => 200;
  @override
  _i3.HttpPrefixHeadersInResponseOutput buildOutput(
          _i3.HttpPrefixHeadersInResponseOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPrefixHeadersInResponseOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i7.endpointResolver
      .resolveWithContext(_i7.sdkId, region, context)
      .endpoint;
}
