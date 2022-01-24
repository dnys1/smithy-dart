// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_prefix_headers_in_response;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// Clients that perform this test extract all headers from the response.
class HttpPrefixHeadersInResponseOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInResponseInput,
    _i2.HttpPrefixHeadersInResponseInput,
    _i3.HttpPrefixHeadersInResponseOutputPayload,
    _i3.HttpPrefixHeadersInResponseOutput> {
  HttpPrefixHeadersInResponseOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInResponseInput,
          _i2.HttpPrefixHeadersInResponseInput,
          _i3.HttpPrefixHeadersInResponseOutputPayload,
          _i3.HttpPrefixHeadersInResponseOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i4.WithEndpointResolver('Rest Json Protocol', region,
              _i4.AWSEndpointResolver(_partitions))
        ])
  ];

  final String region;

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

  @override
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInResponseInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/HttpPrefixHeadersResponse';
      });
  @override
  int successCode([_i3.HttpPrefixHeadersInResponseOutput? output]) => 200;
  @override
  _i3.HttpPrefixHeadersInResponseOutput buildOutput(
          _i3.HttpPrefixHeadersInResponseOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPrefixHeadersInResponseOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
