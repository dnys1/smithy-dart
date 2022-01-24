// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.operation.malformed_range_override;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_validation_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedRangeOverrideOperation extends _i1.HttpOperation<
    _i2.MalformedRangeOverrideInput,
    _i2.MalformedRangeOverrideInput,
    _i1.Unit,
    _i1.Unit> {
  MalformedRangeOverrideOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.MalformedRangeOverrideInput,
          _i2.MalformedRangeOverrideInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  final String region;

  final Uri? _baseUri;

  static final _partitions = [
    _i3.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjsonvalidation.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjsonvalidation.{region}.amazonaws.com.cn',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjsonvalidation.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjsonvalidation.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjsonvalidation.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {})
  ];

  late final _i3.AWSEndpointResolver _endpointResolver =
      _i3.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Rest Json Validation Protocol';

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedRangeOverrideInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedRangeOverride';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'smithy.framework', shape: 'ValidationException'),
            _i1.ErrorKind.client,
            _i6.ValidationException,
            builder: _i6.ValidationException.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
