// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_checksum_required;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example tests httpChecksumRequired trait
class HttpChecksumRequiredOperation extends _i1.HttpOperation<
    _i2.HttpChecksumRequiredInputOutput,
    _i2.HttpChecksumRequiredInputOutput,
    _i2.HttpChecksumRequiredInputOutput,
    _i2.HttpChecksumRequiredInputOutput> {
  /// This example tests httpChecksumRequired trait
  HttpChecksumRequiredOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpChecksumRequiredInputOutput,
          _i2.HttpChecksumRequiredInputOutput,
          _i2.HttpChecksumRequiredInputOutput,
          _i2.HttpChecksumRequiredInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithChecksum(), const _i1.WithContentLength()])
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.HttpChecksumRequiredInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/HttpChecksumRequired';
      });
  @override
  int successCode([_i2.HttpChecksumRequiredInputOutput? output]) => 200;
  @override
  _i2.HttpChecksumRequiredInputOutput buildOutput(
          _i2.HttpChecksumRequiredInputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.HttpChecksumRequiredInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.HttpChecksumRequiredInputOutput> run(
      _i2.HttpChecksumRequiredInputOutput input,
      {Uri? baseUri,
      _i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}
