// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.media_type_header;

import 'dart:convert' as _i6;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example ensures that mediaType strings are base64 encoded in headers.
class MediaTypeHeaderOperation extends _i1.HttpOperation<
    _i2.MediaTypeHeaderInputPayload,
    _i2.MediaTypeHeaderInput,
    _i3.MediaTypeHeaderOutputPayload,
    _i3.MediaTypeHeaderOutput> {
  MediaTypeHeaderOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.MediaTypeHeaderInputPayload,
          _i2.MediaTypeHeaderInput,
          _i3.MediaTypeHeaderOutputPayload,
          _i3.MediaTypeHeaderOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.MediaTypeHeaderInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/MediaTypeHeader';
        if (input.json != null) {
          b.headers['X-Json'] = _i6
              .base64Encode(_i6.utf8.encode(_i6.jsonEncode(input.json!.value)));
        }
      });
  @override
  int successCode([_i3.MediaTypeHeaderOutput? output]) => 200;
  @override
  _i3.MediaTypeHeaderOutput buildOutput(
          _i3.MediaTypeHeaderOutputPayload payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.MediaTypeHeaderOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
