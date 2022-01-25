// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.no_input_and_no_output;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
class NoInputAndNoOutputOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  NoInputAndNoOutputOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i2.RestJson1Protocol(
        serializers: _i3.serializers,
        builderFactories: _i3.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  static final _partitions = [
    _i2.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i2.EndpointDefinition(
            hostname: 'restjson.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i2.CredentialScope()),
        endpoints: const {}),
    _i2.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i2.EndpointDefinition(
            hostname: 'restjson.{region}.amazonaws.com.cn',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i2.CredentialScope()),
        endpoints: const {}),
    _i2.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i2.EndpointDefinition(
            hostname: 'restjson.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i2.CredentialScope()),
        endpoints: const {}),
    _i2.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i2.EndpointDefinition(
            hostname: 'restjson.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i2.CredentialScope()),
        endpoints: const {}),
    _i2.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i2.EndpointDefinition(
            hostname: 'restjson.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i2.CredentialScope()),
        endpoints: const {})
  ];

  late final _i2.AWSEndpointResolver _endpointResolver =
      _i2.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Rest Json Protocol';

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/NoInputAndNoOutput';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i4.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}