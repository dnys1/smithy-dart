// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.serializers;

import 'package:built_collection/built_collection.dart' as _i102;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/all_query_string_types_input.dart'
    as _i4;
import 'package:rest_json1/src/rest_json/model/complex_error.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/complex_nested_error_data.dart'
    as _i6;
import 'package:rest_json1/src/rest_json/model/constant_and_variable_query_string_input.dart'
    as _i7;
import 'package:rest_json1/src/rest_json/model/constant_query_string_input.dart'
    as _i8;
import 'package:rest_json1/src/rest_json/model/document_type_as_payload_input_output.dart'
    as _i10;
import 'package:rest_json1/src/rest_json/model/document_type_input_output.dart'
    as _i9;
import 'package:rest_json1/src/rest_json/model/empty_input_and_empty_output_input.dart'
    as _i11;
import 'package:rest_json1/src/rest_json/model/empty_input_and_empty_output_output.dart'
    as _i12;
import 'package:rest_json1/src/rest_json/model/enum_payload_input.dart' as _i14;
import 'package:rest_json1/src/rest_json/model/foo_enum.dart' as _i3;
import 'package:rest_json1/src/rest_json/model/foo_error.dart' as _i15;
import 'package:rest_json1/src/rest_json/model/greeting_struct.dart' as _i40;
import 'package:rest_json1/src/rest_json/model/greeting_with_errors_output.dart'
    as _i16;
import 'package:rest_json1/src/rest_json/model/host_label_input.dart' as _i13;
import 'package:rest_json1/src/rest_json/model/http_checksum_required_input_output.dart'
    as _i18;
import 'package:rest_json1/src/rest_json/model/http_payload_traits_input_output.dart'
    as _i19;
import 'package:rest_json1/src/rest_json/model/http_payload_traits_with_media_type_input_output.dart'
    as _i20;
import 'package:rest_json1/src/rest_json/model/http_payload_with_structure_input_output.dart'
    as _i21;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_input.dart'
    as _i25;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_output.dart'
    as _i24;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_input.dart'
    as _i22;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_output.dart'
    as _i23;
import 'package:rest_json1/src/rest_json/model/http_request_with_float_labels_input.dart'
    as _i26;
import 'package:rest_json1/src/rest_json/model/http_request_with_greedy_label_in_path_input.dart'
    as _i27;
import 'package:rest_json1/src/rest_json/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i29;
import 'package:rest_json1/src/rest_json/model/http_request_with_labels_input.dart'
    as _i28;
import 'package:rest_json1/src/rest_json/model/http_request_with_regex_literal_input.dart'
    as _i30;
import 'package:rest_json1/src/rest_json/model/http_response_code_output.dart'
    as _i31;
import 'package:rest_json1/src/rest_json/model/ignore_query_params_in_response_output.dart'
    as _i33;
import 'package:rest_json1/src/rest_json/model/input_and_output_with_headers_io.dart'
    as _i34;
import 'package:rest_json1/src/rest_json/model/invalid_greeting.dart' as _i17;
import 'package:rest_json1/src/rest_json/model/json_blobs_input_output.dart'
    as _i35;
import 'package:rest_json1/src/rest_json/model/json_enums_input_output.dart'
    as _i36;
import 'package:rest_json1/src/rest_json/model/json_lists_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/model/json_maps_input_output.dart'
    as _i37;
import 'package:rest_json1/src/rest_json/model/json_timestamps_input_output.dart'
    as _i38;
import 'package:rest_json1/src/rest_json/model/malformed_accept_with_generic_string_input.dart'
    as _i41;
import 'package:rest_json1/src/rest_json/model/malformed_accept_with_payload_output.dart'
    as _i42;
import 'package:rest_json1/src/rest_json/model/malformed_blob_input.dart'
    as _i43;
import 'package:rest_json1/src/rest_json/model/malformed_boolean_input.dart'
    as _i44;
import 'package:rest_json1/src/rest_json/model/malformed_byte_input.dart'
    as _i45;
import 'package:rest_json1/src/rest_json/model/malformed_content_type_with_generic_string_input.dart'
    as _i46;
import 'package:rest_json1/src/rest_json/model/malformed_content_type_with_payload_input.dart'
    as _i47;
import 'package:rest_json1/src/rest_json/model/malformed_double_input.dart'
    as _i48;
import 'package:rest_json1/src/rest_json/model/malformed_float_input.dart'
    as _i49;
import 'package:rest_json1/src/rest_json/model/malformed_integer_input.dart'
    as _i50;
import 'package:rest_json1/src/rest_json/model/malformed_list_input.dart'
    as _i51;
import 'package:rest_json1/src/rest_json/model/malformed_long_input.dart'
    as _i52;
import 'package:rest_json1/src/rest_json/model/malformed_map_input.dart'
    as _i53;
import 'package:rest_json1/src/rest_json/model/malformed_request_body_input.dart'
    as _i54;
import 'package:rest_json1/src/rest_json/model/malformed_set_input.dart'
    as _i55;
import 'package:rest_json1/src/rest_json/model/malformed_short_input.dart'
    as _i56;
import 'package:rest_json1/src/rest_json/model/malformed_string_input.dart'
    as _i57;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_body_date_time_input.dart'
    as _i58;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_body_default_input.dart'
    as _i59;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_body_http_date_input.dart'
    as _i60;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_date_time_input.dart'
    as _i61;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_default_input.dart'
    as _i62;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_epoch_input.dart'
    as _i63;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_path_default_input.dart'
    as _i64;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_path_epoch_input.dart'
    as _i65;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_path_http_date_input.dart'
    as _i66;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_default_input.dart'
    as _i67;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_epoch_input.dart'
    as _i101;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_http_date_input.dart'
    as _i68;
import 'package:rest_json1/src/rest_json/model/malformed_union_input.dart'
    as _i69;
import 'package:rest_json1/src/rest_json/model/media_type_header_input.dart'
    as _i70;
import 'package:rest_json1/src/rest_json/model/media_type_header_output.dart'
    as _i71;
import 'package:rest_json1/src/rest_json/model/my_union.dart' as _i73;
import 'package:rest_json1/src/rest_json/model/nested_payload.dart' as _i74;
import 'package:rest_json1/src/rest_json/model/no_input_and_output_output.dart'
    as _i75;
import 'package:rest_json1/src/rest_json/model/null_and_empty_headers_io.dart'
    as _i76;
import 'package:rest_json1/src/rest_json/model/omits_null_serializes_empty_string_input.dart'
    as _i77;
import 'package:rest_json1/src/rest_json/model/payload_config.dart' as _i78;
import 'package:rest_json1/src/rest_json/model/player_action.dart' as _i79;
import 'package:rest_json1/src/rest_json/model/post_player_action_input.dart'
    as _i80;
import 'package:rest_json1/src/rest_json/model/post_player_action_output.dart'
    as _i81;
import 'package:rest_json1/src/rest_json/model/query_idempotency_token_auto_fill_input.dart'
    as _i82;
import 'package:rest_json1/src/rest_json/model/query_params_as_string_list_map_input.dart'
    as _i83;
import 'package:rest_json1/src/rest_json/model/query_precedence_input.dart'
    as _i84;
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output.dart'
    as _i85;
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output_nested1.dart'
    as _i86;
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output_nested2.dart'
    as _i87;
import 'package:rest_json1/src/rest_json/model/renamed_greeting.dart' as _i72;
import 'package:rest_json1/src/rest_json/model/simple_scalar_properties_input_output.dart'
    as _i88;
import 'package:rest_json1/src/rest_json/model/simple_union.dart' as _i89;
import 'package:rest_json1/src/rest_json/model/streaming_traits_input_output.dart'
    as _i90;
import 'package:rest_json1/src/rest_json/model/streaming_traits_require_length_input_output.dart'
    as _i91;
import 'package:rest_json1/src/rest_json/model/streaming_traits_with_media_type_input_output.dart'
    as _i92;
import 'package:rest_json1/src/rest_json/model/string_enum.dart' as _i93;
import 'package:rest_json1/src/rest_json/model/string_payload_input.dart'
    as _i32;
import 'package:rest_json1/src/rest_json/model/structure_list_member.dart'
    as _i94;
import 'package:rest_json1/src/rest_json/model/test_body_structure_input_output.dart'
    as _i95;
import 'package:rest_json1/src/rest_json/model/test_config.dart' as _i96;
import 'package:rest_json1/src/rest_json/model/test_no_payload_input_output.dart'
    as _i97;
import 'package:rest_json1/src/rest_json/model/test_payload_blob_input_output.dart'
    as _i98;
import 'package:rest_json1/src/rest_json/model/test_payload_structure_input_output.dart'
    as _i99;
import 'package:rest_json1/src/rest_json/model/timestamp_format_headers_io.dart'
    as _i100;
import 'package:rest_json1/src/rest_json/model/union_input_output.dart' as _i39;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.JsonListsInputOutput.serializers,
  ..._i3.FooEnum.serializers,
  ..._i4.AllQueryStringTypesInput.serializers,
  ..._i5.ComplexError.serializers,
  ..._i6.ComplexNestedErrorData.serializers,
  ..._i7.ConstantAndVariableQueryStringInput.serializers,
  ..._i8.ConstantQueryStringInput.serializers,
  ..._i9.DocumentTypeInputOutput.serializers,
  ..._i10.DocumentTypeAsPayloadInputOutput.serializers,
  ..._i11.EmptyInputAndEmptyOutputInput.serializers,
  ..._i12.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i13.HostLabelInput.serializers,
  ..._i14.EnumPayloadInput.serializers,
  ..._i15.FooError.serializers,
  ..._i16.GreetingWithErrorsOutput.serializers,
  ..._i17.InvalidGreeting.serializers,
  ..._i18.HttpChecksumRequiredInputOutput.serializers,
  ..._i19.HttpPayloadTraitsInputOutput.serializers,
  ..._i20.HttpPayloadTraitsWithMediaTypeInputOutput.serializers,
  ..._i21.HttpPayloadWithStructureInputOutput.serializers,
  ..._i22.HttpPrefixHeadersInput.serializers,
  ..._i23.HttpPrefixHeadersOutput.serializers,
  ..._i24.HttpPrefixHeadersInResponseOutput.serializers,
  ..._i25.HttpPrefixHeadersInResponseInput.serializers,
  ..._i26.HttpRequestWithFloatLabelsInput.serializers,
  ..._i27.HttpRequestWithGreedyLabelInPathInput.serializers,
  ..._i28.HttpRequestWithLabelsInput.serializers,
  ..._i29.HttpRequestWithLabelsAndTimestampFormatInput.serializers,
  ..._i30.HttpRequestWithRegexLiteralInput.serializers,
  ..._i31.HttpResponseCodeOutput.serializers,
  ..._i32.StringPayloadInput.serializers,
  ..._i33.IgnoreQueryParamsInResponseOutput.serializers,
  ..._i34.InputAndOutputWithHeadersIo.serializers,
  ..._i35.JsonBlobsInputOutput.serializers,
  ..._i36.JsonEnumsInputOutput.serializers,
  ..._i37.JsonMapsInputOutput.serializers,
  ..._i38.JsonTimestampsInputOutput.serializers,
  ..._i39.UnionInputOutput.serializers,
  ..._i40.GreetingStruct.serializers,
  ..._i41.MalformedAcceptWithGenericStringInput.serializers,
  ..._i42.MalformedAcceptWithPayloadOutput.serializers,
  ..._i43.MalformedBlobInput.serializers,
  ..._i44.MalformedBooleanInput.serializers,
  ..._i45.MalformedByteInput.serializers,
  ..._i46.MalformedContentTypeWithGenericStringInput.serializers,
  ..._i47.MalformedContentTypeWithPayloadInput.serializers,
  ..._i48.MalformedDoubleInput.serializers,
  ..._i49.MalformedFloatInput.serializers,
  ..._i50.MalformedIntegerInput.serializers,
  ..._i51.MalformedListInput.serializers,
  ..._i52.MalformedLongInput.serializers,
  ..._i53.MalformedMapInput.serializers,
  ..._i54.MalformedRequestBodyInput.serializers,
  ..._i55.MalformedSetInput.serializers,
  ..._i56.MalformedShortInput.serializers,
  ..._i57.MalformedStringInput.serializers,
  ..._i58.MalformedTimestampBodyDateTimeInput.serializers,
  ..._i59.MalformedTimestampBodyDefaultInput.serializers,
  ..._i60.MalformedTimestampBodyHttpDateInput.serializers,
  ..._i61.MalformedTimestampHeaderDateTimeInput.serializers,
  ..._i62.MalformedTimestampHeaderDefaultInput.serializers,
  ..._i63.MalformedTimestampHeaderEpochInput.serializers,
  ..._i64.MalformedTimestampPathDefaultInput.serializers,
  ..._i65.MalformedTimestampPathEpochInput.serializers,
  ..._i66.MalformedTimestampPathHttpDateInput.serializers,
  ..._i67.MalformedTimestampQueryDefaultInput.serializers,
  ..._i68.MalformedTimestampQueryHttpDateInput.serializers,
  ..._i69.MalformedUnionInput.serializers,
  ..._i70.MediaTypeHeaderInput.serializers,
  ..._i71.MediaTypeHeaderOutput.serializers,
  ..._i72.RenamedGreeting.serializers,
  ..._i73.MyUnion.serializers,
  ..._i74.NestedPayload.serializers,
  ..._i75.NoInputAndOutputOutput.serializers,
  ..._i76.NullAndEmptyHeadersIo.serializers,
  ..._i77.OmitsNullSerializesEmptyStringInput.serializers,
  ..._i78.PayloadConfig.serializers,
  ..._i79.PlayerAction.serializers,
  ..._i80.PostPlayerActionInput.serializers,
  ..._i81.PostPlayerActionOutput.serializers,
  ..._i82.QueryIdempotencyTokenAutoFillInput.serializers,
  ..._i83.QueryParamsAsStringListMapInput.serializers,
  ..._i84.QueryPrecedenceInput.serializers,
  ..._i85.RecursiveShapesInputOutput.serializers,
  ..._i86.RecursiveShapesInputOutputNested1.serializers,
  ..._i87.RecursiveShapesInputOutputNested2.serializers,
  ..._i88.SimpleScalarPropertiesInputOutput.serializers,
  ..._i89.SimpleUnion.serializers,
  ..._i90.StreamingTraitsInputOutput.serializers,
  ..._i91.StreamingTraitsRequireLengthInputOutput.serializers,
  ..._i92.StreamingTraitsWithMediaTypeInputOutput.serializers,
  ..._i93.StringEnum.serializers,
  ..._i94.StructureListMember.serializers,
  ..._i95.TestBodyStructureInputOutput.serializers,
  ..._i96.TestConfig.serializers,
  ..._i97.TestNoPayloadInputOutput.serializers,
  ..._i98.TestPayloadBlobInputOutput.serializers,
  ..._i99.TestPayloadStructureInputOutput.serializers,
  ..._i100.TimestampFormatHeadersIo.serializers,
  ..._i101.MalformedTimestampQueryEpochInput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i102.BuiltList, [FullType(bool)]):
      _i102.ListBuilder<bool>.new,
  const FullType(_i102.BuiltList, [FullType(_i3.FooEnum)]):
      _i102.ListBuilder<_i3.FooEnum>.new,
  const FullType(_i102.BuiltList, [FullType(int)]): _i102.ListBuilder<int>.new,
  const FullType(_i102.BuiltList, [FullType(String)]):
      _i102.ListBuilder<String>.new,
  const FullType(_i102.BuiltList, [
    FullType(_i102.BuiltList, [FullType(String)])
  ]): _i102.ListBuilder<_i102.BuiltList<String>>.new,
  const FullType(_i102.BuiltList, [FullType.nullable(String)]):
      _i102.ListBuilder<String?>.new,
  const FullType(_i102.BuiltSet, [FullType(String)]):
      _i102.SetBuilder<String>.new,
  const FullType(_i102.BuiltList, [FullType(_i94.StructureListMember)]):
      _i102.ListBuilder<_i94.StructureListMember>.new,
  const FullType(_i102.BuiltList, [FullType(DateTime)]):
      _i102.ListBuilder<DateTime>.new,
  const FullType(_i102.BuiltList, [FullType(double)]):
      _i102.ListBuilder<double>.new,
  const FullType(_i102.BuiltSet, [FullType(int)]): _i102.SetBuilder<int>.new,
  const FullType(_i102.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i102.ListMultimapBuilder<String, String>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType(String)]):
      _i102.MapBuilder<String, String>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType(_i3.FooEnum)]):
      _i102.MapBuilder<String, _i3.FooEnum>.new,
  const FullType(_i102.BuiltSet, [FullType(_i3.FooEnum)]):
      _i102.SetBuilder<_i3.FooEnum>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType(bool)]):
      _i102.MapBuilder<String, bool>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType(int)]):
      _i102.MapBuilder<String, int>.new,
  const FullType(_i102.BuiltSetMultimap, [FullType(String), FullType(String)]):
      _i102.SetMultimapBuilder<String, String>.new,
  const FullType(
          _i102.BuiltMap, [FullType(String), FullType(_i40.GreetingStruct)]):
      _i102.MapBuilder<String, _i40.GreetingStruct>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType.nullable(bool)]):
      _i102.MapBuilder<String, bool?>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType.nullable(int)]):
      _i102.MapBuilder<String, int?>.new,
  const FullType(_i102.BuiltMap, [FullType(String), FullType.nullable(String)]):
      _i102.MapBuilder<String, String?>.new,
  const FullType(_i102.BuiltMap, [
    FullType(String),
    FullType.nullable(_i40.GreetingStruct)
  ]): _i102.MapBuilder<String, _i40.GreetingStruct?>.new
};
