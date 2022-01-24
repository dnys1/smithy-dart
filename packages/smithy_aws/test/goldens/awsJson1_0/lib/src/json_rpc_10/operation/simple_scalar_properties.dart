// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.simple_scalar_properties;

import 'package:aws_common/aws_common.dart' as _i6;
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
  SimpleScalarPropertiesOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

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
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.SimpleScalarProperties')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  static final _partitions = [
    _i4.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i4.EndpointDefinition(
            hostname: 'jsonrpc10.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {}),
    _i4.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i4.EndpointDefinition(
            hostname: 'jsonrpc10.{region}.amazonaws.com.cn',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {}),
    _i4.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i4.EndpointDefinition(
            hostname: 'jsonrpc10.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {}),
    _i4.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i4.EndpointDefinition(
            hostname: 'jsonrpc10.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {}),
    _i4.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i4.EndpointDefinition(
            hostname: 'jsonrpc10.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {})
  ];

  late final _i4.AWSEndpointResolver _endpointResolver =
      _i4.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'JSON RPC 10';

  @override
  _i1.HttpRequest buildRequest(_i2.SimpleScalarPropertiesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i3.SimpleScalarPropertiesOutput? output]) => 200;
  @override
  _i3.SimpleScalarPropertiesOutput buildOutput(
          _i3.SimpleScalarPropertiesOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.SimpleScalarPropertiesOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
