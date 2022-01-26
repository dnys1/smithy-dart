// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.json_unions;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:aws_json1_1/src/json_protocol/common/serializers.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/union_input_output.dart'
    as _i2;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation uses unions for inputs and outputs.
class JsonUnionsOperation extends _i1.HttpOperation<_i2.UnionInputOutput,
    _i2.UnionInputOutput, _i2.UnionInputOutput, _i2.UnionInputOutput> {
  JsonUnionsOperation(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i3.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.UnionInputOutput, _i2.UnionInputOutput,
          _i2.UnionInputOutput, _i2.UnionInputOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonProtocol.JsonUnions'),
          _i4.WithSigV4(
              region: region,
              serviceName: 'foo',
              credentialsProvider: credentialsProvider)
        ])
  ];

  final String region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.UnionInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.UnionInputOutput? output]) => 200;
  @override
  _i2.UnionInputOutput buildOutput(
          _i2.UnionInputOutput payload, _i6.AWSStreamedHttpResponse response) =>
      _i2.UnionInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i7.endpointResolver
      .resolveWithContext(_i7.sdkId, region, context)
      .endpoint;
}
