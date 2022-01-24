// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.operation_with_optional_input_output;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/common/serializers.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

class OperationWithOptionalInputOutputOperation extends _i1.HttpOperation<
    _i2.OperationWithOptionalInputOutputInput,
    _i2.OperationWithOptionalInputOutputInput,
    _i3.OperationWithOptionalInputOutputOutput,
    _i3.OperationWithOptionalInputOutputOutput> {
  OperationWithOptionalInputOutputOperation(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i4.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.OperationWithOptionalInputOutputInput,
          _i2.OperationWithOptionalInputOutputInput,
          _i3.OperationWithOptionalInputOutputOutput,
          _i3.OperationWithOptionalInputOutputOutput>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.OperationWithOptionalInputOutput'),
          _i5.WithSigV4(
              region: region,
              serviceName: 'foo',
              credentialsProvider: credentialsProvider)
        ])
  ];

  final String region;

  final Uri? _baseUri;

  static final _partitions = [
    _i5.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i5.EndpointDefinition(
            hostname: 'jsonprotocol.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i5.CredentialScope()),
        endpoints: const {}),
    _i5.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i5.EndpointDefinition(
            hostname: 'jsonprotocol.{region}.amazonaws.com.cn',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i5.CredentialScope()),
        endpoints: const {}),
    _i5.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i5.EndpointDefinition(
            hostname: 'jsonprotocol.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i5.CredentialScope()),
        endpoints: const {}),
    _i5.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i5.EndpointDefinition(
            hostname: 'jsonprotocol.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i5.CredentialScope()),
        endpoints: const {}),
    _i5.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i5.EndpointDefinition(
            hostname: 'jsonprotocol.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i5.CredentialScope()),
        endpoints: const {})
  ];

  late final _i5.AWSEndpointResolver _endpointResolver =
      _i5.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Json Protocol';

  final _i4.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(
          _i2.OperationWithOptionalInputOutputInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i3.OperationWithOptionalInputOutputOutput? output]) => 200;
  @override
  _i3.OperationWithOptionalInputOutputOutput buildOutput(
          _i3.OperationWithOptionalInputOutputOutput payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.OperationWithOptionalInputOutputOutput.fromResponse(
          payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
