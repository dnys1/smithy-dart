// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.operation.get_rest_apis;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:rest_json1/src/backplane_control_service/model/bad_request_exception.dart'
    as _i9;
import 'package:rest_json1/src/backplane_control_service/model/get_rest_apis_request.dart'
    as _i2;
import 'package:rest_json1/src/backplane_control_service/model/rest_api.dart'
    as _i5;
import 'package:rest_json1/src/backplane_control_service/model/rest_apis.dart'
    as _i3;
import 'package:rest_json1/src/backplane_control_service/model/too_many_requests_exception.dart'
    as _i10;
import 'package:rest_json1/src/backplane_control_service/model/unauthorized_exception.dart'
    as _i11;
import 'package:rest_json1/src/backplane_control_service/serializers.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;

class GetRestApisOperation extends _i1.PaginatedHttpOperation<
    _i2.GetRestApisRequestPayload,
    _i2.GetRestApisRequest,
    _i3.RestApis,
    _i3.RestApis,
    String,
    int,
    _i4.BuiltList<_i5.RestApi>> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.GetRestApisRequestPayload, _i2.GetRestApisRequest,
          _i3.RestApis, _i3.RestApis>> protocols = [
    _i6.RestJson1Protocol(
        serializers: _i7.serializers,
        builderFactories: _i7.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoContentLength(),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.GetRestApisRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/restapis';
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
          _i3.RestApis payload, _i8.AWSStreamedHttpResponse response) =>
      _i3.RestApis.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'BadRequestException'),
            _i1.ErrorKind.client,
            _i9.BadRequestException,
            statusCode: 400,
            builder: _i9.BadRequestException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i10.TooManyRequestsException,
            statusCode: 429,
            builder: _i10.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'UnauthorizedException'),
            _i1.ErrorKind.client,
            _i11.UnauthorizedException,
            statusCode: 401,
            builder: _i11.UnauthorizedException.fromResponse)
      ];
  @override
  String? getToken(_i3.RestApis output) => output.position;
  @override
  _i4.BuiltList<_i5.RestApi> getItems(_i3.RestApis output) =>
      output.items ?? _i4.BuiltList();
  @override
  _i2.GetRestApisRequest rebuildInput(
          _i2.GetRestApisRequest input, String token, int? pageSize) =>
      input.rebuild((b) {
        b.position = input.position;
        b.limit = input.limit;
      });
}
