// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.operation.malformed_length_query_string_operation;

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_validation_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_validation_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedLengthQueryStringOperation extends _i1.HttpOperation<
    _i2.MalformedLengthQueryStringInputPayload,
    _i2.MalformedLengthQueryStringInput,
    _i1.Unit,
    _i1.Unit> {
  MalformedLengthQueryStringOperation({required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.MalformedLengthQueryStringInputPayload,
          _i2.MalformedLengthQueryStringInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ],
        responseInterceptors: [])
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedLengthQueryStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/MalformedLengthQueryString';
        if (input.string != null) {
          b.queryParameters.add('string', input.string!);
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'smithy.framework', shape: 'ValidationException'),
            _i1.ErrorKind.client,
            _i7.ValidationException,
            builder: _i7.ValidationException.fromResponse)
      ];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i1.Unit> run(_i2.MalformedLengthQueryStringInput input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i8.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}
