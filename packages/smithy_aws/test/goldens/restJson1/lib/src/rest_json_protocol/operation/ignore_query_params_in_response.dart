// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.ignore_query_params_in_response;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example ensures that query string bound request parameters are
/// serialized in the body of responses if the structure is used in both
/// the request and response.
class IgnoreQueryParamsInResponseOperation extends _i1.HttpOperation<
    _i1.Unit,
    _i1.Unit,
    _i2.IgnoreQueryParamsInResponseOutput,
    _i2.IgnoreQueryParamsInResponseOutput> {
  /// This example ensures that query string bound request parameters are
  /// serialized in the body of responses if the structure is used in both
  /// the request and response.
  IgnoreQueryParamsInResponseOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i2.IgnoreQueryParamsInResponseOutput,
          _i2.IgnoreQueryParamsInResponseOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/IgnoreQueryParamsInResponse';
      });
  @override
  int successCode([_i2.IgnoreQueryParamsInResponseOutput? output]) => 200;
  @override
  _i2.IgnoreQueryParamsInResponseOutput buildOutput(
          _i2.IgnoreQueryParamsInResponseOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.IgnoreQueryParamsInResponseOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i6.endpointResolver
      .resolveWithContext(_i6.sdkId, region, context)
      .endpoint;
}
