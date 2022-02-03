// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.common.serializers;

import 'package:aws_json1_0/src/json_rpc_10/model/aws_config.dart' as _i11;
import 'package:aws_json1_0/src/json_rpc_10/model/client_config.dart' as _i8;
import 'package:aws_json1_0/src/json_rpc_10/model/complex_error.dart' as _i12;
import 'package:aws_json1_0/src/json_rpc_10/model/complex_nested_error_data.dart'
    as _i13;
import 'package:aws_json1_0/src/json_rpc_10/model/empty_input_and_empty_output_input.dart'
    as _i14;
import 'package:aws_json1_0/src/json_rpc_10/model/empty_input_and_empty_output_output.dart'
    as _i15;
import 'package:aws_json1_0/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart'
    as _i16;
import 'package:aws_json1_0/src/json_rpc_10/model/environment_config.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc_10/model/file_config_settings.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc_10/model/foo_enum.dart' as _i23;
import 'package:aws_json1_0/src/json_rpc_10/model/foo_error.dart' as _i17;
import 'package:aws_json1_0/src/json_rpc_10/model/greeting_struct.dart' as _i24;
import 'package:aws_json1_0/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i19;
import 'package:aws_json1_0/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i20;
import 'package:aws_json1_0/src/json_rpc_10/model/invalid_greeting.dart'
    as _i18;
import 'package:aws_json1_0/src/json_rpc_10/model/json_unions_input.dart'
    as _i21;
import 'package:aws_json1_0/src/json_rpc_10/model/json_unions_output.dart'
    as _i22;
import 'package:aws_json1_0/src/json_rpc_10/model/my_union.dart' as _i25;
import 'package:aws_json1_0/src/json_rpc_10/model/no_input_and_output_output.dart'
    as _i26;
import 'package:aws_json1_0/src/json_rpc_10/model/operation_config.dart' as _i9;
import 'package:aws_json1_0/src/json_rpc_10/model/retry_config.dart' as _i7;
import 'package:aws_json1_0/src/json_rpc_10/model/retry_mode.dart' as _i2;
import 'package:aws_json1_0/src/json_rpc_10/model/s3_addressing_style.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc_10/model/s3_config.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc_10/model/scoped_config.dart' as _i10;
import 'package:aws_json1_0/src/json_rpc_10/model/simple_scalar_properties_input.dart'
    as _i27;
import 'package:aws_json1_0/src/json_rpc_10/model/simple_scalar_properties_output.dart'
    as _i28;
import 'package:built_collection/built_collection.dart' as _i29;
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
  ..._i14.EmptyInputAndEmptyOutputInput.serializers,
  ..._i15.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i16.EndpointWithHostLabelOperationInput.serializers,
  ..._i17.FooError.serializers,
  ..._i18.InvalidGreeting.serializers,
  ..._i19.GreetingWithErrorsInput.serializers,
  ..._i20.GreetingWithErrorsOutput.serializers,
  ..._i21.JsonUnionsInput.serializers,
  ..._i22.JsonUnionsOutput.serializers,
  ..._i23.FooEnum.serializers,
  ..._i24.GreetingStruct.serializers,
  ..._i25.MyUnion.serializers,
  ..._i26.NoInputAndOutputOutput.serializers,
  ..._i27.SimpleScalarPropertiesInput.serializers,
  ..._i28.SimpleScalarPropertiesOutput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i29.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i29.MapBuilder<String, _i6.FileConfigSettings>.new,
  const FullType(_i29.BuiltList, [FullType(String)]):
      _i29.ListBuilder<String>.new,
  const FullType(_i29.BuiltMap, [FullType(String), FullType(String)]):
      _i29.MapBuilder<String, String>.new
};
