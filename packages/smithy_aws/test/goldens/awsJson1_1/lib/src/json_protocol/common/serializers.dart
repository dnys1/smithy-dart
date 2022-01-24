// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.common.serializers;

import 'package:aws_json1_1/src/json_protocol/model/complex_error.dart' as _i2;
import 'package:aws_json1_1/src/json_protocol/model/complex_nested_error_data.dart'
    as _i3;
import 'package:aws_json1_1/src/json_protocol/model/empty_struct.dart' as _i4;
import 'package:aws_json1_1/src/json_protocol/model/error_with_members.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/model/error_without_members.dart'
    as _i7;
import 'package:aws_json1_1/src/json_protocol/model/foo_enum.dart' as _i12;
import 'package:aws_json1_1/src/json_protocol/model/foo_error.dart' as _i8;
import 'package:aws_json1_1/src/json_protocol/model/greeting_struct.dart'
    as _i17;
import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i10;
import 'package:aws_json1_1/src/json_protocol/model/host_label_input.dart'
    as _i5;
import 'package:aws_json1_1/src/json_protocol/model/invalid_greeting.dart'
    as _i9;
import 'package:aws_json1_1/src/json_protocol/model/json_enums_input_output.dart'
    as _i11;
import 'package:aws_json1_1/src/json_protocol/model/kitchen_sink.dart' as _i14;
import 'package:aws_json1_1/src/json_protocol/model/my_union.dart' as _i18;
import 'package:aws_json1_1/src/json_protocol/model/null_operation_input_output.dart'
    as _i19;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i20;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i21;
import 'package:aws_json1_1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i22;
import 'package:aws_json1_1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i23;
import 'package:aws_json1_1/src/json_protocol/model/simple_struct.dart' as _i15;
import 'package:aws_json1_1/src/json_protocol/model/struct_with_json_name.dart'
    as _i16;
import 'package:aws_json1_1/src/json_protocol/model/union_input_output.dart'
    as _i13;
import 'package:built_collection/built_collection.dart' as _i24;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ComplexError.serializers,
  ..._i3.ComplexNestedErrorData.serializers,
  ..._i4.EmptyStruct.serializers,
  ..._i5.HostLabelInput.serializers,
  ..._i6.ErrorWithMembers.serializers,
  ..._i7.ErrorWithoutMembers.serializers,
  ..._i8.FooError.serializers,
  ..._i9.InvalidGreeting.serializers,
  ..._i10.GreetingWithErrorsOutput.serializers,
  ..._i11.JsonEnumsInputOutput.serializers,
  ..._i12.FooEnum.serializers,
  ..._i13.UnionInputOutput.serializers,
  ..._i14.KitchenSink.serializers,
  ..._i15.SimpleStruct.serializers,
  ..._i16.StructWithJsonName.serializers,
  ..._i17.GreetingStruct.serializers,
  ..._i18.MyUnion.serializers,
  ..._i19.NullOperationInputOutput.serializers,
  ..._i20.OperationWithOptionalInputOutputInput.serializers,
  ..._i21.OperationWithOptionalInputOutputOutput.serializers,
  ..._i22.PutAndGetInlineDocumentsInputOutput.serializers,
  ..._i23.SimpleScalarPropertiesInputOutput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i24.BuiltList, [FullType(String)]):
      _i24.ListBuilder<String>.new,
  const FullType(_i24.BuiltMap, [FullType(String), FullType(String)]):
      _i24.MapBuilder<String, String>.new,
  const FullType(_i24.BuiltList, [FullType(_i12.FooEnum)]):
      _i24.ListBuilder<_i12.FooEnum>.new,
  const FullType(_i24.BuiltMap, [FullType(String), FullType(_i12.FooEnum)]):
      _i24.MapBuilder<String, _i12.FooEnum>.new,
  const FullType(_i24.BuiltSet, [FullType(_i12.FooEnum)]):
      _i24.SetBuilder<_i12.FooEnum>.new,
  const FullType(_i24.BuiltList, [
    FullType(_i24.BuiltList, [FullType(String)])
  ]): _i24.ListBuilder<_i24.BuiltList<String>>.new,
  const FullType(_i24.BuiltList, [
    FullType(_i24.BuiltMap, [FullType(String), FullType(String)])
  ]): _i24.ListBuilder<_i24.BuiltMap<String, String>>.new,
  const FullType(_i24.BuiltList, [FullType(_i15.SimpleStruct)]):
      _i24.ListBuilder<_i15.SimpleStruct>.new,
  const FullType(_i24.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i24.ListMultimapBuilder<String, String>.new,
  const FullType(_i24.BuiltMap, [
    FullType(String),
    FullType(_i24.BuiltMap, [FullType(String), FullType(String)])
  ]): _i24.MapBuilder<String, _i24.BuiltMap<String, String>>.new,
  const FullType(
          _i24.BuiltMap, [FullType(String), FullType(_i15.SimpleStruct)]):
      _i24.MapBuilder<String, _i15.SimpleStruct>.new,
  const FullType(_i24.BuiltList, [FullType(_i14.KitchenSink)]):
      _i24.ListBuilder<_i14.KitchenSink>.new,
  const FullType(_i24.BuiltMap, [FullType(String), FullType(_i14.KitchenSink)]):
      _i24.MapBuilder<String, _i14.KitchenSink>.new,
  const FullType(_i24.BuiltList, [FullType.nullable(String)]):
      _i24.ListBuilder<String?>.new,
  const FullType(_i24.BuiltMap, [FullType(String), FullType.nullable(String)]):
      _i24.MapBuilder<String, String?>.new
};
