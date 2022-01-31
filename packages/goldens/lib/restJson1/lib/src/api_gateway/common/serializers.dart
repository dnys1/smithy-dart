// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.common.serializers;

import 'package:built_collection/built_collection.dart' as _i21;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/api_gateway/model/api_key_source_type.dart'
    as _i2;
import 'package:rest_json1/src/api_gateway/model/aws_config.dart' as _i12;
import 'package:rest_json1/src/api_gateway/model/bad_request_exception.dart'
    as _i13;
import 'package:rest_json1/src/api_gateway/model/client_config.dart' as _i9;
import 'package:rest_json1/src/api_gateway/model/endpoint_configuration.dart'
    as _i14;
import 'package:rest_json1/src/api_gateway/model/endpoint_type.dart' as _i15;
import 'package:rest_json1/src/api_gateway/model/environment_config.dart'
    as _i4;
import 'package:rest_json1/src/api_gateway/model/file_config_settings.dart'
    as _i7;
import 'package:rest_json1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i16;
import 'package:rest_json1/src/api_gateway/model/operation_config.dart' as _i10;
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i18;
import 'package:rest_json1/src/api_gateway/model/rest_apis.dart' as _i17;
import 'package:rest_json1/src/api_gateway/model/retry_config.dart' as _i8;
import 'package:rest_json1/src/api_gateway/model/retry_mode.dart' as _i3;
import 'package:rest_json1/src/api_gateway/model/s3_addressing_style.dart'
    as _i5;
import 'package:rest_json1/src/api_gateway/model/s3_config.dart' as _i6;
import 'package:rest_json1/src/api_gateway/model/scoped_config.dart' as _i11;
import 'package:rest_json1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i19;
import 'package:rest_json1/src/api_gateway/model/unauthorized_exception.dart'
    as _i20;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ApiKeySourceType.serializers,
  ..._i3.RetryMode.serializers,
  ..._i4.EnvironmentConfig.serializers,
  ..._i5.S3AddressingStyle.serializers,
  ..._i6.S3Config.serializers,
  ..._i7.FileConfigSettings.serializers,
  ..._i8.RetryConfig.serializers,
  ..._i9.ClientConfig.serializers,
  ..._i10.OperationConfig.serializers,
  ..._i11.ScopedConfig.serializers,
  ..._i12.AwsConfig.serializers,
  ..._i13.BadRequestException.serializers,
  ..._i14.EndpointConfiguration.serializers,
  ..._i15.EndpointType.serializers,
  ..._i16.GetRestApisRequest.serializers,
  ..._i17.RestApis.serializers,
  ..._i18.RestApi.serializers,
  ..._i19.TooManyRequestsException.serializers,
  ..._i20.UnauthorizedException.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i21.BuiltMap, [FullType(String), FullType(_i7.FileConfigSettings)]):
      _i21.MapBuilder<String, _i7.FileConfigSettings>.new,
  const FullType(_i21.BuiltList, [FullType(_i15.EndpointType)]):
      _i21.ListBuilder<_i15.EndpointType>.new,
  const FullType(_i21.BuiltList, [FullType(String)]):
      _i21.ListBuilder<String>.new,
  const FullType(_i21.BuiltList, [FullType(_i18.RestApi)]):
      _i21.ListBuilder<_i18.RestApi>.new,
  const FullType(_i21.BuiltMap, [FullType(String), FullType(String)]):
      _i21.MapBuilder<String, String>.new
};
