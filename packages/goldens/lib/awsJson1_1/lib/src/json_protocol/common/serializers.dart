// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.common.serializers;

import 'package:aws_json1_1/src/json_protocol/model/aws_config.dart' as _i11;
import 'package:aws_json1_1/src/json_protocol/model/client_config.dart' as _i8;
import 'package:aws_json1_1/src/json_protocol/model/complex_error.dart' as _i12;
import 'package:aws_json1_1/src/json_protocol/model/complex_nested_error_data.dart'
    as _i13;
import 'package:aws_json1_1/src/json_protocol/model/empty_struct.dart' as _i14;
import 'package:aws_json1_1/src/json_protocol/model/environment_config.dart'
    as _i3;
import 'package:aws_json1_1/src/json_protocol/model/error_with_members.dart'
    as _i16;
import 'package:aws_json1_1/src/json_protocol/model/error_without_members.dart'
    as _i17;
import 'package:aws_json1_1/src/json_protocol/model/file_config_settings.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/model/foo_enum.dart' as _i22;
import 'package:aws_json1_1/src/json_protocol/model/foo_error.dart' as _i18;
import 'package:aws_json1_1/src/json_protocol/model/greeting_struct.dart'
    as _i27;
import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i20;
import 'package:aws_json1_1/src/json_protocol/model/host_label_input.dart'
    as _i15;
import 'package:aws_json1_1/src/json_protocol/model/invalid_greeting.dart'
    as _i19;
import 'package:aws_json1_1/src/json_protocol/model/json_enums_input_output.dart'
    as _i21;
import 'package:aws_json1_1/src/json_protocol/model/kitchen_sink.dart' as _i24;
import 'package:aws_json1_1/src/json_protocol/model/my_union.dart' as _i28;
import 'package:aws_json1_1/src/json_protocol/model/null_operation_input_output.dart'
    as _i29;
import 'package:aws_json1_1/src/json_protocol/model/operation_config.dart'
    as _i9;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i30;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i31;
import 'package:aws_json1_1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i32;
import 'package:aws_json1_1/src/json_protocol/model/retry_config.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/model/retry_mode.dart' as _i2;
import 'package:aws_json1_1/src/json_protocol/model/s3_addressing_style.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/model/s3_config.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/scoped_config.dart' as _i10;
import 'package:aws_json1_1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i33;
import 'package:aws_json1_1/src/json_protocol/model/simple_struct.dart' as _i25;
import 'package:aws_json1_1/src/json_protocol/model/struct_with_json_name.dart'
    as _i26;
import 'package:aws_json1_1/src/json_protocol/model/union_input_output.dart'
    as _i23;
import 'package:built_collection/built_collection.dart' as _i34;
import 'package:built_value/serializer.dart';
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
  ..._i12.ComplexError.serializers,
  ..._i13.ComplexNestedErrorData.serializers,
  ..._i14.EmptyStruct.serializers,
  ..._i15.HostLabelInput.serializers,
  ..._i16.ErrorWithMembers.serializers,
  ..._i17.ErrorWithoutMembers.serializers,
  ..._i18.FooError.serializers,
  ..._i19.InvalidGreeting.serializers,
  ..._i20.GreetingWithErrorsOutput.serializers,
  ..._i21.JsonEnumsInputOutput.serializers,
  ..._i22.FooEnum.serializers,
  ..._i23.UnionInputOutput.serializers,
  ..._i24.KitchenSink.serializers,
  ..._i25.SimpleStruct.serializers,
  ..._i26.StructWithJsonName.serializers,
  ..._i27.GreetingStruct.serializers,
  ..._i28.MyUnion.serializers,
  ..._i29.NullOperationInputOutput.serializers,
  ..._i30.OperationWithOptionalInputOutputInput.serializers,
  ..._i31.OperationWithOptionalInputOutputOutput.serializers,
  ..._i32.PutAndGetInlineDocumentsInputOutput.serializers,
  ..._i33.SimpleScalarPropertiesInputOutput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i34.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i34.MapBuilder<String, _i6.FileConfigSettings>.new,
  const FullType(_i34.BuiltList, [FullType(String)]):
      _i34.ListBuilder<String>.new,
  const FullType(_i34.BuiltMap, [FullType(String), FullType(String)]):
      _i34.MapBuilder<String, String>.new,
  const FullType(_i34.BuiltList, [FullType(_i22.FooEnum)]):
      _i34.ListBuilder<_i22.FooEnum>.new,
  const FullType(_i34.BuiltMap, [FullType(String), FullType(_i22.FooEnum)]):
      _i34.MapBuilder<String, _i22.FooEnum>.new,
  const FullType(_i34.BuiltSet, [FullType(_i22.FooEnum)]):
      _i34.SetBuilder<_i22.FooEnum>.new,
  const FullType(_i34.BuiltList, [
    FullType(_i34.BuiltList, [FullType(String)])
  ]): _i34.ListBuilder<_i34.BuiltList<String>>.new,
  const FullType(_i34.BuiltList, [
    FullType(_i34.BuiltMap, [FullType(String), FullType(String)])
  ]): _i34.ListBuilder<_i34.BuiltMap<String, String>>.new,
  const FullType(_i34.BuiltList, [FullType(_i25.SimpleStruct)]):
      _i34.ListBuilder<_i25.SimpleStruct>.new,
  const FullType(_i34.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i34.ListMultimapBuilder<String, String>.new,
  const FullType(_i34.BuiltMap, [
    FullType(String),
    FullType(_i34.BuiltMap, [FullType(String), FullType(String)])
  ]): _i34.MapBuilder<String, _i34.BuiltMap<String, String>>.new,
  const FullType(
          _i34.BuiltMap, [FullType(String), FullType(_i25.SimpleStruct)]):
      _i34.MapBuilder<String, _i25.SimpleStruct>.new,
  const FullType(_i34.BuiltList, [FullType(_i24.KitchenSink)]):
      _i34.ListBuilder<_i24.KitchenSink>.new,
  const FullType(_i34.BuiltMap, [FullType(String), FullType(_i24.KitchenSink)]):
      _i34.MapBuilder<String, _i24.KitchenSink>.new,
  const FullType(_i34.BuiltList, [FullType.nullable(String)]):
      _i34.ListBuilder<String?>.new,
  const FullType(_i34.BuiltMap, [FullType(String), FullType.nullable(String)]):
      _i34.MapBuilder<String, String?>.new
};
