// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.operation.get_rest_apis;

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i10;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:rest_json1/src/api_gateway/common/endpoint_resolver.dart'
    as _i9;
import 'package:rest_json1/src/api_gateway/common/serializers.dart' as _i8;
import 'package:rest_json1/src/api_gateway/model/bad_request_exception.dart'
    as _i11;
import 'package:rest_json1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i2;
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i5;
import 'package:rest_json1/src/api_gateway/model/rest_apis.dart' as _i3;
import 'package:rest_json1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i12;
import 'package:rest_json1/src/api_gateway/model/unauthorized_exception.dart'
    as _i13;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;

class GetRestApisOperation extends _i1.PaginatedHttpOperation<
    _i2.GetRestApisRequestPayload,
    _i2.GetRestApisRequest,
    _i3.RestApis,
    _i3.RestApis,
    String,
    int,
    _i4.BuiltList<_i5.RestApi>> {
  GetRestApisOperation(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i6.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.GetRestApisRequestPayload, _i2.GetRestApisRequest,
          _i3.RestApis, _i3.RestApis>> protocols = [
    _i7.RestJson1Protocol(
        serializers: _i8.serializers,
        builderFactories: _i8.builderFactories,
        interceptors: [
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i7.WithSigV4(
              region: region,
              serviceName: 'apigateway',
              credentialsProvider: credentialsProvider),
          const _i1.WithHeader('Accept', 'application/json')
        ])
  ];

  late final _i7.AWSEndpoint _awsEndpoint =
      _i9.endpointResolver.resolve(_i9.sdkId, region);

  final String region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetRestApisRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/restapis';
        if (input.position != null) {
          b.queryParameters.add('position', input.position!);
        }
        if (input.limit != null) {
          b.queryParameters.add('limit', input.limit!.toString());
        }
      });
  @override
  int successCode([_i3.RestApis? output]) => 200;
  @override
  _i3.RestApis buildOutput(
          _i3.RestApis payload, _i10.AWSStreamedHttpResponse response) =>
      _i3.RestApis.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'BadRequestException'),
            _i1.ErrorKind.client,
            _i11.BadRequestException,
            statusCode: 400,
            builder: _i11.BadRequestException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i12.TooManyRequestsException,
            statusCode: 429,
            builder: _i12.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'UnauthorizedException'),
            _i1.ErrorKind.client,
            _i13.UnauthorizedException,
            statusCode: 401,
            builder: _i13.UnauthorizedException.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i14.Future<_i3.RestApis> run(_i2.GetRestApisRequest input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i14.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }

  @override
  String? getToken(_i3.RestApis output) => output.position;
  @override
  _i4.BuiltList<_i5.RestApi> getItems(_i3.RestApis output) =>
      output.items ?? _i4.BuiltList();
  @override
  _i2.GetRestApisRequest rebuildInput(
          _i2.GetRestApisRequest input, String token, int? pageSize) =>
      input.rebuild((b) {
        if (input.position != null) {
          b.position = input.position!;
        }
        if (input.limit != null) {
          b.limit = input.limit!;
        }
      });
}
