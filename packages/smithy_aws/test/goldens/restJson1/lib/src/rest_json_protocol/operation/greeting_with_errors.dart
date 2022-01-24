// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.greeting_with_errors;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/complex_error.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/model/foo_error.dart' as _i7;
import 'package:rest_json1/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/invalid_greeting.dart'
    as _i8;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This operation has four possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error. 4. A FooError. Implementations must be able to successfully take a response and properly (de)serialize successful and error responses based on the the presence of the
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutputPayload, _i2.GreetingWithErrorsOutput> {
  GreetingWithErrorsOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutputPayload,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ])
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
            hostname: 'restjson.{region}.amazonaws.com',
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
            hostname: 'restjson.{region}.amazonaws.com.cn',
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
            hostname: 'restjson.{region}.c2s.ic.gov',
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
            hostname: 'restjson.{region}.sc2s.sgov.gov',
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
            hostname: 'restjson.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {})
  ];

  late final _i3.AWSEndpointResolver _endpointResolver =
      _i3.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Rest Json Protocol';

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/GreetingWithErrors';
      });
  @override
  int successCode([_i2.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i2.GreetingWithErrorsOutput buildOutput(
          _i2.GreetingWithErrorsOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.GreetingWithErrorsOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.restjson', shape: 'ComplexError'),
            _i1.ErrorKind.client,
            _i6.ComplexError,
            statusCode: 403,
            builder: _i6.ComplexError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.restjson', shape: 'FooError'),
            _i1.ErrorKind.server,
            _i7.FooError,
            statusCode: 500,
            builder: _i7.FooError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.restjson',
                shape: 'InvalidGreeting'),
            _i1.ErrorKind.client,
            _i8.InvalidGreeting,
            statusCode: 400,
            builder: _i8.InvalidGreeting.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
