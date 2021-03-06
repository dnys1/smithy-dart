// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.streaming_traits_require_length_operation;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_require_length_input.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples serializes a streaming blob shape with a required content length in the request body. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
class StreamingTraitsRequireLengthOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    _i3.StreamingTraitsRequireLengthInput,
    _i1.Unit,
    _i1.Unit> {
  /// This examples serializes a streaming blob shape with a required content length in the request body. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  StreamingTraitsRequireLengthOperation({required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Stream<List<int>>,
          _i3.StreamingTraitsRequireLengthInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        requestInterceptors: [
          const _i1.WithHost(),
          const _i1.WithContentLength(),
          const _i1.WithUserAgent('aws-sdk-dart/0.5.5'),
          const _i4.WithSdkInvocationId(),
          const _i4.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.StreamingTraitsRequireLengthInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/StreamingTraitsRequireLength';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i7.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i2.Future<_i1.Unit> run(_i3.StreamingTraitsRequireLengthInput input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i2.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
