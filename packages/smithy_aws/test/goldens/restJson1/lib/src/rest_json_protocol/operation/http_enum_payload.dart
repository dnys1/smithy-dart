// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_enum_payload;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_protocol/model/string_enum.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class HttpEnumPayloadOperation extends _i1.HttpOperation<_i2.StringEnum,
    _i3.EnumPayloadInput, _i2.StringEnum, _i3.EnumPayloadInput> {
  HttpEnumPayloadOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.StringEnum, _i3.EnumPayloadInput, _i2.StringEnum,
          _i3.EnumPayloadInput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [const _i1.WithContentLength()])
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
            hostname: 'restjson.{region}.amazonaws.com',
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
            hostname: 'restjson.{region}.amazonaws.com.cn',
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
            hostname: 'restjson.{region}.c2s.ic.gov',
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
            hostname: 'restjson.{region}.sc2s.sgov.gov',
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
            hostname: 'restjson.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {})
  ];

  late final _i4.AWSEndpointResolver _endpointResolver =
      _i4.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Rest Json Protocol';

  @override
  _i1.HttpRequest buildRequest(_i3.EnumPayloadInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/EnumPayload';
      });
  @override
  int successCode([_i3.EnumPayloadInput? output]) => 200;
  @override
  _i3.EnumPayloadInput buildOutput(
          _i2.StringEnum? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.EnumPayloadInput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
