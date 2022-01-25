// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_request_with_greedy_label_in_path;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class HttpRequestWithGreedyLabelInPathOperation extends _i1.HttpOperation<
    _i2.HttpRequestWithGreedyLabelInPathInputPayload,
    _i2.HttpRequestWithGreedyLabelInPathInput,
    _i1.Unit,
    _i1.Unit> {
  HttpRequestWithGreedyLabelInPathOperation(
      {Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpRequestWithGreedyLabelInPathInputPayload,
          _i2.HttpRequestWithGreedyLabelInPathInput,
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
  _i1.HttpRequest buildRequest(
          _i2.HttpRequestWithGreedyLabelInPathInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/HttpRequestWithGreedyLabelInPath/foo/{foo}/baz/{baz+}';
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
