// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.malformed_integer_operation;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_integer_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:uuid/uuid.dart' as _i8;

class MalformedIntegerOperation extends _i1.HttpOperation<
    _i2.MalformedIntegerInputPayload,
    _i2.MalformedIntegerInput,
    _i1.Unit,
    _i1.Unit> {
  MalformedIntegerOperation({required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.MalformedIntegerInputPayload,
          _i2.MalformedIntegerInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i3.WithSdkInvocationId(),
          const _i3.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedIntegerInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/MalformedInteger/{integerInPath}';
        if (input.integerInHeader != null) {
          b.headers['integerInHeader'] = input.integerInHeader!.toString();
        }
        if (input.integerInQuery != null) {
          b.queryParameters
              .add('integerInQuery', input.integerInQuery!.toString());
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(_i2.MalformedIntegerInput input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i6.AWSHeaders.sdkInvocationId: const _i8.Uuid().v4()}
        });
  }
}
