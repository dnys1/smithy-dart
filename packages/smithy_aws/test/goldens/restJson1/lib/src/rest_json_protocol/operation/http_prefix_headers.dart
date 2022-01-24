// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_prefix_headers;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples adds headers to the input of a request and response by prefix.
class HttpPrefixHeadersOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInputPayload,
    _i2.HttpPrefixHeadersInput,
    _i3.HttpPrefixHeadersOutputPayload,
    _i3.HttpPrefixHeadersOutput> {
  HttpPrefixHeadersOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInputPayload,
          _i2.HttpPrefixHeadersInput,
          _i3.HttpPrefixHeadersOutputPayload,
          _i3.HttpPrefixHeadersOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/HttpPrefixHeaders';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
        if (input.fooMap != null) {
          for (var entry in input.fooMap!.toMap().entries) {
            if (entry.value.isNotEmpty) {
              b.headers['X-Foo-' + entry.key] = entry.value;
            }
          }
        }
      });
  @override
  int successCode([_i3.HttpPrefixHeadersOutput? output]) => 200;
  @override
  _i3.HttpPrefixHeadersOutput buildOutput(
          _i3.HttpPrefixHeadersOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPrefixHeadersOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
