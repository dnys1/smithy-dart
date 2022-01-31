// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.common.serializers;

import 'package:built_collection/built_collection.dart' as _i32;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation_protocol/model/aws_config.dart'
    as _i11;
import 'package:rest_json1/src/rest_json_validation_protocol/model/client_config.dart'
    as _i8;
import 'package:rest_json1/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i12;
import 'package:rest_json1/src/rest_json_validation_protocol/model/enum_union.dart'
    as _i13;
import 'package:rest_json1/src/rest_json_validation_protocol/model/environment_config.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_validation_protocol/model/file_config_settings.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i16;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_input.dart'
    as _i17;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_override_input.dart'
    as _i18;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i19;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_pattern_input.dart'
    as _i20;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart'
    as _i21;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_range_input.dart'
    as _i22;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i23;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_required_input.dart'
    as _i24;
import 'package:rest_json1/src/rest_json_validation_protocol/model/operation_config.dart'
    as _i9;
import 'package:rest_json1/src/rest_json_validation_protocol/model/pattern_union.dart'
    as _i25;
import 'package:rest_json1/src/rest_json_validation_protocol/model/pattern_union_override.dart'
    as _i26;
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i27;
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i28;
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i29;
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_union_two.dart'
    as _i30;
import 'package:rest_json1/src/rest_json_validation_protocol/model/retry_config.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_validation_protocol/model/retry_mode.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation_protocol/model/s3_addressing_style.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation_protocol/model/s3_config.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_validation_protocol/model/scoped_config.dart'
    as _i10;
import 'package:rest_json1/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i31;
import 'package:rest_json1/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i15;
import 'package:rest_json1/src/rest_json_validation_protocol/model/validation_exception_field.dart'
    as _i14;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.RetryMode.serializers,
  ..._i3.EnvironmentConfig.serializers,
  ..._i4.S3AddressingStyle.serializers,
  ..._i5.S3Config.serializers,
  ..._i6.FileConfigSettings.serializers,
  ..._i7.RetryConfig.serializers,
  ..._i8.ClientConfig.serializers,
  ..._i9.OperationConfig.serializers,
  ..._i10.ScopedConfig.serializers,
  ..._i11.AwsConfig.serializers,
  ..._i12.EnumString.serializers,
  ..._i13.EnumUnion.serializers,
  ..._i14.ValidationExceptionField.serializers,
  ..._i15.ValidationException.serializers,
  ..._i16.MalformedEnumInput.serializers,
  ..._i17.MalformedLengthInput.serializers,
  ..._i18.MalformedLengthOverrideInput.serializers,
  ..._i19.MalformedLengthQueryStringInput.serializers,
  ..._i20.MalformedPatternInput.serializers,
  ..._i21.MalformedPatternOverrideInput.serializers,
  ..._i22.MalformedRangeInput.serializers,
  ..._i23.MalformedRangeOverrideInput.serializers,
  ..._i24.MalformedRequiredInput.serializers,
  ..._i25.PatternUnion.serializers,
  ..._i26.PatternUnionOverride.serializers,
  ..._i27.RecursiveEnumString.serializers,
  ..._i28.RecursiveStructuresInput.serializers,
  ..._i29.RecursiveUnionOne.serializers,
  ..._i30.RecursiveUnionTwo.serializers,
  ..._i31.SensitiveValidationInput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i32.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i32.MapBuilder<String, _i6.FileConfigSettings>.new,
  const FullType(_i32.BuiltList, [FullType(_i14.ValidationExceptionField)]):
      _i32.ListBuilder<_i14.ValidationExceptionField>.new,
  const FullType(_i32.BuiltList, [FullType(_i12.EnumString)]):
      _i32.ListBuilder<_i12.EnumString>.new,
  const FullType(_i32.BuiltMap, [
    FullType(_i12.EnumString),
    FullType(_i12.EnumString)
  ]): _i32.MapBuilder<_i12.EnumString, _i12.EnumString>.new,
  const FullType(_i32.BuiltList, [FullType(String)]):
      _i32.ListBuilder<String>.new,
  const FullType(_i32.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i32.ListMultimapBuilder<String, String>.new,
  const FullType(_i32.BuiltMap, [FullType(String), FullType(String)]):
      _i32.MapBuilder<String, String>.new
};
