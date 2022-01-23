// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation.serializers;

import 'package:built_collection/built_collection.dart' as _i22;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation/model/enum_string.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_validation/model/enum_union.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation/model/malformed_enum_input.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_validation/model/malformed_length_input.dart'
    as _i8;
import 'package:rest_json1/src/rest_json_validation/model/malformed_length_override_input.dart'
    as _i9;
import 'package:rest_json1/src/rest_json_validation/model/malformed_length_query_string_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation/model/malformed_pattern_input.dart'
    as _i10;
import 'package:rest_json1/src/rest_json_validation/model/malformed_pattern_override_input.dart'
    as _i11;
import 'package:rest_json1/src/rest_json_validation/model/malformed_range_input.dart'
    as _i12;
import 'package:rest_json1/src/rest_json_validation/model/malformed_range_override_input.dart'
    as _i13;
import 'package:rest_json1/src/rest_json_validation/model/malformed_required_input.dart'
    as _i14;
import 'package:rest_json1/src/rest_json_validation/model/pattern_union.dart'
    as _i16;
import 'package:rest_json1/src/rest_json_validation/model/pattern_union_override.dart'
    as _i17;
import 'package:rest_json1/src/rest_json_validation/model/recursive_enum_string.dart'
    as _i18;
import 'package:rest_json1/src/rest_json_validation/model/recursive_structures_input.dart'
    as _i19;
import 'package:rest_json1/src/rest_json_validation/model/recursive_union_one.dart'
    as _i20;
import 'package:rest_json1/src/rest_json_validation/model/recursive_union_two.dart'
    as _i21;
import 'package:rest_json1/src/rest_json_validation/model/sensitive_validation_input.dart'
    as _i15;
import 'package:rest_json1/src/rest_json_validation/model/validation_exception.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_validation/model/validation_exception_field.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.MalformedLengthQueryStringInput.serializers,
  ..._i3.EnumString.serializers,
  ..._i4.EnumUnion.serializers,
  ..._i5.ValidationExceptionField.serializers,
  ..._i6.ValidationException.serializers,
  ..._i7.MalformedEnumInput.serializers,
  ..._i8.MalformedLengthInput.serializers,
  ..._i9.MalformedLengthOverrideInput.serializers,
  ..._i10.MalformedPatternInput.serializers,
  ..._i11.MalformedPatternOverrideInput.serializers,
  ..._i12.MalformedRangeInput.serializers,
  ..._i13.MalformedRangeOverrideInput.serializers,
  ..._i14.MalformedRequiredInput.serializers,
  ..._i15.SensitiveValidationInput.serializers,
  ..._i16.PatternUnion.serializers,
  ..._i17.PatternUnionOverride.serializers,
  ..._i18.RecursiveEnumString.serializers,
  ..._i19.RecursiveStructuresInput.serializers,
  ..._i20.RecursiveUnionOne.serializers,
  ..._i21.RecursiveUnionTwo.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i22.BuiltList, [FullType(_i5.ValidationExceptionField)]):
      _i22.ListBuilder<_i5.ValidationExceptionField>.new,
  const FullType(_i22.BuiltList, [FullType(_i3.EnumString)]):
      _i22.ListBuilder<_i3.EnumString>.new,
  const FullType(
          _i22.BuiltMap, [FullType(_i3.EnumString), FullType(_i3.EnumString)]):
      _i22.MapBuilder<_i3.EnumString, _i3.EnumString>.new,
  const FullType(_i22.BuiltList, [FullType(String)]):
      _i22.ListBuilder<String>.new,
  const FullType(_i22.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i22.ListMultimapBuilder<String, String>.new,
  const FullType(_i22.BuiltMap, [FullType(String), FullType(String)]):
      _i22.MapBuilder<String, String>.new
};
