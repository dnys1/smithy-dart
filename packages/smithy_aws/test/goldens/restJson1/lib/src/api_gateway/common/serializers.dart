// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.common.serializers;

import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/api_gateway/model/api_key_source_type.dart'
    as _i2;
import 'package:rest_json1/src/api_gateway/model/bad_request_exception.dart'
    as _i3;
import 'package:rest_json1/src/api_gateway/model/endpoint_configuration.dart'
    as _i4;
import 'package:rest_json1/src/api_gateway/model/endpoint_type.dart' as _i5;
import 'package:rest_json1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i8;
import 'package:rest_json1/src/api_gateway/model/rest_apis.dart' as _i7;
import 'package:rest_json1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i9;
import 'package:rest_json1/src/api_gateway/model/unauthorized_exception.dart'
    as _i10;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ApiKeySourceType.serializers,
  ..._i3.BadRequestException.serializers,
  ..._i4.EndpointConfiguration.serializers,
  ..._i5.EndpointType.serializers,
  ..._i6.GetRestApisRequest.serializers,
  ..._i7.RestApis.serializers,
  ..._i8.RestApi.serializers,
  ..._i9.TooManyRequestsException.serializers,
  ..._i10.UnauthorizedException.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i11.BuiltList, [FullType(_i5.EndpointType)]):
      _i11.ListBuilder<_i5.EndpointType>.new,
  const FullType(_i11.BuiltList, [FullType(String)]):
      _i11.ListBuilder<String>.new,
  const FullType(_i11.BuiltList, [FullType(_i8.RestApi)]):
      _i11.ListBuilder<_i8.RestApi>.new,
  const FullType(_i11.BuiltMap, [FullType(String), FullType(String)]):
      _i11.MapBuilder<String, String>.new
};
