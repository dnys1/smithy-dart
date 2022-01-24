// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.greeting_with_errors;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_0/src/json_rpc_10/common/serializers.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc_10/model/complex_error.dart' as _i7;
import 'package:aws_json1_0/src/json_rpc_10/model/foo_error.dart' as _i8;
import 'package:aws_json1_0/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc_10/model/invalid_greeting.dart' as _i9;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<
    _i2.GreetingWithErrorsInput,
    _i2.GreetingWithErrorsInput,
    _i3.GreetingWithErrorsOutput,
    _i3.GreetingWithErrorsOutput> {
  GreetingWithErrorsOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GreetingWithErrorsInput,
          _i2.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsOutput,
          _i3.GreetingWithErrorsOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonRpc10.GreetingWithErrors')
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
            hostname: 'jsonrpc10.{region}.amazonaws.com',
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
            hostname: 'jsonrpc10.{region}.amazonaws.com.cn',
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
            hostname: 'jsonrpc10.{region}.c2s.ic.gov',
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
            hostname: 'jsonrpc10.{region}.sc2s.sgov.gov',
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
            hostname: 'jsonrpc10.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i4.CredentialScope()),
        endpoints: const {})
  ];

  late final _i4.AWSEndpointResolver _endpointResolver =
      _i4.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'JSON RPC 10';

  @override
  _i1.HttpRequest buildRequest(_i2.GreetingWithErrorsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i3.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i3.GreetingWithErrorsOutput buildOutput(_i3.GreetingWithErrorsOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.GreetingWithErrorsOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json10', shape: 'ComplexError'),
            _i1.ErrorKind.client,
            _i7.ComplexError,
            builder: _i7.ComplexError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json10', shape: 'FooError'),
            _i1.ErrorKind.server,
            _i8.FooError,
            builder: _i8.FooError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json10',
                shape: 'InvalidGreeting'),
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
