// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.greeting_with_errors_operation;

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/common/serializers.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/complex_error.dart' as _i8;
import 'package:aws_json1_1/src/json_protocol/model/foo_error.dart' as _i9;
import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/model/invalid_greeting.dart'
    as _i10;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:uuid/uuid.dart' as _i12;

/// This operation has three possible return values:
///
/// 1. A successful response in the form of GreetingWithErrorsOutput
/// 2. An InvalidGreeting error.
/// 3. A ComplexError error.
///
/// Implementations must be able to successfully take a response and
/// properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutput, _i2.GreetingWithErrorsOutput> {
  /// This operation has three possible return values:
  ///
  /// 1. A successful response in the form of GreetingWithErrorsOutput
  /// 2. An InvalidGreeting error.
  /// 3. A ComplexError error.
  ///
  /// Implementations must be able to successfully take a response and
  /// properly deserialize successful and error responses.
  GreetingWithErrorsOperation(
      {required String region,
      Uri? baseUri,
      _i3.AWSCredentialsProvider credentialsProvider =
          const _i3.AWSCredentialsProvider.dartEnvironment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutput,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.GreetingWithErrors'),
          _i4.WithSigV4(
              region: _region,
              serviceName: 'foo',
              credentialsProvider: _credentialsProvider),
          const _i4.WithSdkInvocationId(),
          const _i4.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i2.GreetingWithErrorsOutput buildOutput(_i2.GreetingWithErrorsOutput payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i2.GreetingWithErrorsOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'ComplexError'),
            _i1.ErrorKind.client,
            _i8.ComplexError,
            builder: _i8.ComplexError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(namespace: 'aws.protocoltests.json', shape: 'FooError'),
            _i1.ErrorKind.server,
            _i9.FooError,
            builder: _i9.FooError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'InvalidGreeting'),
            _i1.ErrorKind.client,
            _i10.InvalidGreeting,
            builder: _i10.InvalidGreeting.fromResponse)
      ];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i11.Future<_i2.GreetingWithErrorsOutput> run(_i1.Unit input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i11.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: const _i12.Uuid().v4()}
        });
  }
}
