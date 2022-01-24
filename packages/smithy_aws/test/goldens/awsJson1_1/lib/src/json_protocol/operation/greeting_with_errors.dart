// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.greeting_with_errors;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/common/serializers.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/complex_error.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/model/foo_error.dart' as _i8;
import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/model/invalid_greeting.dart'
    as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutput, _i2.GreetingWithErrorsOutput> {
  GreetingWithErrorsOperation(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i3.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutput,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.GreetingWithErrors'),
          _i4.WithSigV4(
              region: region,
              serviceName: 'foo',
              credentialsProvider: credentialsProvider)
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
            hostname: 'jsonprotocol.{region}.amazonaws.com',
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
            hostname: 'jsonprotocol.{region}.amazonaws.com.cn',
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
            hostname: 'jsonprotocol.{region}.c2s.ic.gov',
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
            hostname: 'jsonprotocol.{region}.sc2s.sgov.gov',
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
            hostname: 'jsonprotocol.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {})
  ];

  late final _i4.AWSEndpointResolver _endpointResolver =
      _i4.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Json Protocol';

  final _i3.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i2.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i2.GreetingWithErrorsOutput buildOutput(_i2.GreetingWithErrorsOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.GreetingWithErrorsOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'ComplexError'),
            _i1.ErrorKind.client,
            _i7.ComplexError,
            builder: _i7.ComplexError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(namespace: 'aws.protocoltests.json', shape: 'FooError'),
            _i1.ErrorKind.server,
            _i8.FooError,
            builder: _i8.FooError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'InvalidGreeting'),
            _i1.ErrorKind.client,
            _i9.InvalidGreeting,
            builder: _i9.InvalidGreeting.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
