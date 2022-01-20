// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.serializers;

import 'package:aws_json1_0/src/json_rpc10/model/complex_error.dart' as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/complex_nested_error_data.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_input.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_output.dart'
    as _i5;
import 'package:aws_json1_0/src/json_rpc10/model/endpoint_with_host_label_operation_input.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc10/model/foo_enum.dart' as _i13;
import 'package:aws_json1_0/src/json_rpc10/model/foo_error.dart' as _i7;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_struct.dart' as _i14;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_input.dart'
    as _i8;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_output.dart'
    as _i9;
import 'package:aws_json1_0/src/json_rpc10/model/invalid_greeting.dart' as _i10;
import 'package:aws_json1_0/src/json_rpc10/model/json_unions_input.dart'
    as _i11;
import 'package:aws_json1_0/src/json_rpc10/model/json_unions_output.dart'
    as _i12;
import 'package:aws_json1_0/src/json_rpc10/model/my_union.dart' as _i15;
import 'package:aws_json1_0/src/json_rpc10/model/no_input_and_output_output.dart'
    as _i16;
import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_input.dart'
    as _i17;
import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_output.dart'
    as _i18;
import 'package:built_collection/built_collection.dart' as _i19;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ComplexError.serializers,
  ..._i3.ComplexNestedErrorData.serializers,
  ..._i4.EmptyInputAndEmptyOutputInput.serializers,
  ..._i5.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i6.EndpointWithHostLabelOperationInput.serializers,
  ..._i7.FooError.serializers,
  ..._i8.GreetingWithErrorsInput.serializers,
  ..._i9.GreetingWithErrorsOutput.serializers,
  ..._i10.InvalidGreeting.serializers,
  ..._i11.JsonUnionsInput.serializers,
  ..._i12.JsonUnionsOutput.serializers,
  ..._i13.FooEnum.serializers,
  ..._i14.GreetingStruct.serializers,
  ..._i15.MyUnion.serializers,
  ..._i16.NoInputAndOutputOutput.serializers,
  ..._i17.SimpleScalarPropertiesInput.serializers,
  ..._i18.SimpleScalarPropertiesOutput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i19.BuiltList, [FullType(String)]):
      _i19.ListBuilder<String>.new,
  const FullType(_i19.BuiltMap, [FullType(String), FullType(String)]):
      _i19.MapBuilder<String, String>.new,
  const FullType(_i19.BuiltList, [FullType(String)]):
      _i19.ListBuilder<String>.new,
  const FullType(_i19.BuiltMap, [FullType(String), FullType(String)]):
      _i19.MapBuilder<String, String>.new
};
