// Generated code. DO NOT MODIFY.

library rest_json1.glacier.operation.upload_multipart_part;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:rest_json1/src/glacier/common/serializers.dart' as _i7;
import 'package:rest_json1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:rest_json1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i10;
import 'package:rest_json1/src/glacier/model/request_timeout_exception.dart'
    as _i11;
import 'package:rest_json1/src/glacier/model/resource_not_found_exception.dart'
    as _i12;
import 'package:rest_json1/src/glacier/model/service_unavailable_exception.dart'
    as _i13;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i3;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;

class UploadMultipartPartOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    _i3.UploadMultipartPartInput,
    _i4.UploadMultipartPartOutputPayload,
    _i4.UploadMultipartPartOutput> {
  UploadMultipartPartOperation(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i5.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Stream<List<int>>,
          _i3.UploadMultipartPartInput,
          _i4.UploadMultipartPartOutputPayload,
          _i4.UploadMultipartPartOutput>> protocols = [
    _i6.RestJson1Protocol(
        serializers: _i7.serializers,
        builderFactories: _i7.builderFactories,
        interceptors: [
          _i6.WithSigV4(
              region: region,
              serviceName: 'glacier',
              credentialsProvider: credentialsProvider)
        ])
  ];

  final String region;

  final Uri? _baseUri;

  static final _partitions = [
    _i6.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i6.EndpointDefinition(
            hostname: 'glacier.{region}.amazonaws.com',
            protocols: ['https', 'http'],
            signatureVersions: ['v4'],
            credentialScope: _i6.CredentialScope()),
        endpoints: const {
          'af-south-1': _i6.EndpointDefinition(),
          'ap-east-1': _i6.EndpointDefinition(),
          'ap-northeast-1': _i6.EndpointDefinition(),
          'ap-northeast-2': _i6.EndpointDefinition(),
          'ap-northeast-3': _i6.EndpointDefinition(),
          'ap-south-1': _i6.EndpointDefinition(),
          'ap-southeast-1': _i6.EndpointDefinition(),
          'ap-southeast-2': _i6.EndpointDefinition(),
          'ca-central-1': _i6.EndpointDefinition(),
          'eu-central-1': _i6.EndpointDefinition(),
          'eu-north-1': _i6.EndpointDefinition(),
          'eu-south-1': _i6.EndpointDefinition(),
          'eu-west-1': _i6.EndpointDefinition(),
          'eu-west-2': _i6.EndpointDefinition(),
          'eu-west-3': _i6.EndpointDefinition(),
          'fips-ca-central-1': _i6.EndpointDefinition(
              hostname: 'glacier-fips.ca-central-1.amazonaws.com',
              credentialScope: _i6.CredentialScope(region: 'ca-central-1')),
          'fips-us-east-1': _i6.EndpointDefinition(
              hostname: 'glacier-fips.us-east-1.amazonaws.com',
              credentialScope: _i6.CredentialScope(region: 'us-east-1')),
          'fips-us-east-2': _i6.EndpointDefinition(
              hostname: 'glacier-fips.us-east-2.amazonaws.com',
              credentialScope: _i6.CredentialScope(region: 'us-east-2')),
          'fips-us-west-1': _i6.EndpointDefinition(
              hostname: 'glacier-fips.us-west-1.amazonaws.com',
              credentialScope: _i6.CredentialScope(region: 'us-west-1')),
          'fips-us-west-2': _i6.EndpointDefinition(
              hostname: 'glacier-fips.us-west-2.amazonaws.com',
              credentialScope: _i6.CredentialScope(region: 'us-west-2')),
          'me-south-1': _i6.EndpointDefinition(),
          'sa-east-1': _i6.EndpointDefinition(),
          'us-east-1': _i6.EndpointDefinition(),
          'us-east-2': _i6.EndpointDefinition(),
          'us-west-1': _i6.EndpointDefinition(),
          'us-west-2': _i6.EndpointDefinition()
        }),
    _i6.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i6.EndpointDefinition(
            hostname: 'glacier.{region}.amazonaws.com.cn',
            protocols: ['https', 'http'],
            signatureVersions: ['v4'],
            credentialScope: _i6.CredentialScope()),
        endpoints: const {
          'cn-north-1': _i6.EndpointDefinition(),
          'cn-northwest-1': _i6.EndpointDefinition()
        }),
    _i6.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i6.EndpointDefinition(
            hostname: 'glacier.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i6.CredentialScope()),
        endpoints: const {
          'us-iso-east-1': _i6.EndpointDefinition(protocols: ['http', 'https'])
        }),
    _i6.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i6.EndpointDefinition(
            hostname: 'glacier.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i6.CredentialScope()),
        endpoints: const {'us-isob-east-1': _i6.EndpointDefinition()}),
    _i6.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i6.EndpointDefinition(
            hostname: 'glacier.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i6.CredentialScope()),
        endpoints: const {
          'us-gov-east-1': _i6.EndpointDefinition(
              hostname: 'glacier.us-gov-east-1.amazonaws.com',
              credentialScope: _i6.CredentialScope(region: 'us-gov-east-1')),
          'us-gov-west-1': _i6.EndpointDefinition(
              hostname: 'glacier.us-gov-west-1.amazonaws.com',
              protocols: ['http', 'https'],
              credentialScope: _i6.CredentialScope(region: 'us-gov-west-1'))
        })
  ];

  late final _i6.AWSEndpointResolver _endpointResolver =
      _i6.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Glacier';

  final _i5.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i3.UploadMultipartPartInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}';
        if (input.checksum != null) {
          if (input.checksum!.isNotEmpty) {
            b.headers['x-amz-sha256-tree-hash'] = input.checksum!;
          }
        }
        if (input.range != null) {
          if (input.range!.isNotEmpty) {
            b.headers['Content-Range'] = input.range!;
          }
        }
      });
  @override
  int successCode([_i4.UploadMultipartPartOutput? output]) => 200;
  @override
  _i4.UploadMultipartPartOutput buildOutput(
          _i4.UploadMultipartPartOutputPayload payload,
          _i8.AWSStreamedHttpResponse response) =>
      _i4.UploadMultipartPartOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'InvalidParameterValueException'),
            _i1.ErrorKind.client,
            _i9.InvalidParameterValueException,
            statusCode: 400,
            builder: _i9.InvalidParameterValueException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'MissingParameterValueException'),
            _i1.ErrorKind.client,
            _i10.MissingParameterValueException,
            statusCode: 400,
            builder: _i10.MissingParameterValueException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'RequestTimeoutException'),
            _i1.ErrorKind.client,
            _i11.RequestTimeoutException,
            statusCode: 408,
            builder: _i11.RequestTimeoutException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i12.ResourceNotFoundException,
            statusCode: 404,
            builder: _i12.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'ServiceUnavailableException'),
            _i1.ErrorKind.server,
            _i13.ServiceUnavailableException,
            statusCode: 500,
            builder: _i13.ServiceUnavailableException.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
