// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.json_unions_operation;

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_0/src/json_rpc_10/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc_10/common/serializers.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc_10/model/json_unions_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc_10/model/json_unions_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation uses unions for inputs and outputs.
class JsonUnionsOperation extends _i1.HttpOperation<_i2.JsonUnionsInput,
    _i2.JsonUnionsInput, _i3.JsonUnionsOutput, _i3.JsonUnionsOutput> {
  /// This operation uses unions for inputs and outputs.
  JsonUnionsOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonUnionsInput, _i2.JsonUnionsInput,
          _i3.JsonUnionsOutput, _i3.JsonUnionsOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonRpc10.JsonUnions')
        ],
        responseInterceptors: [])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.JsonUnionsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.JsonUnionsOutput? output]) => 200;
  @override
  _i3.JsonUnionsOutput buildOutput(
          _i3.JsonUnionsOutput payload, _i7.AWSStreamedHttpResponse response) =>
      _i3.JsonUnionsOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.JsonUnionsOutput> run(_i2.JsonUnionsInput input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i8.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}