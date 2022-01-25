// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.endpoint_with_host_label_operation;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc_10/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc_10/common/serializers.dart' as _i4;
import 'package:aws_json1_0/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class EndpointWithHostLabelOperation extends _i1.HttpOperation<
    _i2.EndpointWithHostLabelOperationInput,
    _i2.EndpointWithHostLabelOperationInput,
    _i1.Unit,
    _i1.Unit> {
  EndpointWithHostLabelOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.EndpointWithHostLabelOperationInput,
          _i2.EndpointWithHostLabelOperationInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.AwsJson1_0Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.EndpointWithHostLabelOperation')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.EndpointWithHostLabelOperationInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.hostPrefix = 'foo.{label}.';
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
