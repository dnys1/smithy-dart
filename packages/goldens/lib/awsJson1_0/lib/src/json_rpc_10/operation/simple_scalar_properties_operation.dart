// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.simple_scalar_properties_operation;

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_0/src/json_rpc_10/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc_10/common/serializers.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc_10/model/simple_scalar_properties_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc_10/model/simple_scalar_properties_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class SimpleScalarPropertiesOperation extends _i1.HttpOperation<
    _i2.SimpleScalarPropertiesInput,
    _i2.SimpleScalarPropertiesInput,
    _i3.SimpleScalarPropertiesOutput,
    _i3.SimpleScalarPropertiesOutput> {
  SimpleScalarPropertiesOperation({required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.SimpleScalarPropertiesInput,
          _i2.SimpleScalarPropertiesInput,
          _i3.SimpleScalarPropertiesOutput,
          _i3.SimpleScalarPropertiesOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        requestInterceptors: [
          const _i1.WithHost(),
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.SimpleScalarProperties'),
          const _i1.WithUserAgent('aws-sdk-dart/0.5.5'),
          const _i4.WithSdkInvocationId(),
          const _i4.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.SimpleScalarPropertiesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.SimpleScalarPropertiesOutput? output]) => 200;
  @override
  _i3.SimpleScalarPropertiesOutput buildOutput(
          _i3.SimpleScalarPropertiesOutput payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.SimpleScalarPropertiesOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.SimpleScalarPropertiesOutput> run(
      _i2.SimpleScalarPropertiesInput input,
      {_i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i8.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
