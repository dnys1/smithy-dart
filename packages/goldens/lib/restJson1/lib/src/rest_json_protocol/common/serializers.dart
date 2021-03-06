// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library rest_json1.rest_json_protocol.common.serializers;

import 'dart:typed_data' as _i118;

import 'package:built_collection/built_collection.dart' as _i117;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/aws_config.dart'
    as _i116;
import 'package:rest_json1/src/rest_json_protocol/model/client_config.dart'
    as _i113;
import 'package:rest_json1/src/rest_json_protocol/model/complex_error.dart'
    as _i12;
import 'package:rest_json1/src/rest_json_protocol/model/complex_nested_error_data.dart'
    as _i13;
import 'package:rest_json1/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/constant_query_string_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_protocol/model/document_type_input_output.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart'
    as _i8;
import 'package:rest_json1/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart'
    as _i9;
import 'package:rest_json1/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i17;
import 'package:rest_json1/src/rest_json_protocol/model/environment_config.dart'
    as _i108;
import 'package:rest_json1/src/rest_json_protocol/model/file_config_settings.dart'
    as _i111;
import 'package:rest_json1/src/rest_json_protocol/model/foo_enum.dart' as _i3;
import 'package:rest_json1/src/rest_json_protocol/model/foo_error.dart' as _i14;
import 'package:rest_json1/src/rest_json_protocol/model/greeting_struct.dart'
    as _i41;
import 'package:rest_json1/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i11;
import 'package:rest_json1/src/rest_json_protocol/model/host_label_input.dart'
    as _i10;
import 'package:rest_json1/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i16;
import 'package:rest_json1/src/rest_json_protocol/model/http_payload_traits_input_output.dart'
    as _i19;
import 'package:rest_json1/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i20;
import 'package:rest_json1/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart'
    as _i21;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i26;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i25;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i23;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i24;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_float_labels_input.dart'
    as _i27;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i28;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i30;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_labels_input.dart'
    as _i29;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart'
    as _i31;
import 'package:rest_json1/src/rest_json_protocol/model/http_response_code_output.dart'
    as _i32;
import 'package:rest_json1/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i34;
import 'package:rest_json1/src/rest_json_protocol/model/input_and_output_with_headers_io.dart'
    as _i35;
import 'package:rest_json1/src/rest_json_protocol/model/invalid_greeting.dart'
    as _i15;
import 'package:rest_json1/src/rest_json_protocol/model/json_blobs_input_output.dart'
    as _i36;
import 'package:rest_json1/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i37;
import 'package:rest_json1/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i38;
import 'package:rest_json1/src/rest_json_protocol/model/json_maps_input_output.dart'
    as _i40;
import 'package:rest_json1/src/rest_json_protocol/model/json_timestamps_input_output.dart'
    as _i42;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_accept_with_generic_string_input.dart'
    as _i46;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart'
    as _i47;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_blob_input.dart'
    as _i48;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_boolean_input.dart'
    as _i49;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_byte_input.dart'
    as _i50;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart'
    as _i51;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart'
    as _i52;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_double_input.dart'
    as _i53;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_float_input.dart'
    as _i54;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_integer_input.dart'
    as _i55;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_list_input.dart'
    as _i56;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_long_input.dart'
    as _i57;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_map_input.dart'
    as _i58;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_request_body_input.dart'
    as _i59;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_set_input.dart'
    as _i60;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_short_input.dart'
    as _i61;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_string_input.dart'
    as _i62;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart'
    as _i63;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart'
    as _i64;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart'
    as _i65;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart'
    as _i66;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart'
    as _i67;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart'
    as _i68;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart'
    as _i69;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart'
    as _i70;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart'
    as _i71;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart'
    as _i72;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart'
    as _i73;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart'
    as _i74;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_union_input.dart'
    as _i76;
import 'package:rest_json1/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i77;
import 'package:rest_json1/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i78;
import 'package:rest_json1/src/rest_json_protocol/model/my_union.dart' as _i45;
import 'package:rest_json1/src/rest_json_protocol/model/nested_payload.dart'
    as _i22;
import 'package:rest_json1/src/rest_json_protocol/model/no_input_and_output_output.dart'
    as _i79;
import 'package:rest_json1/src/rest_json_protocol/model/null_and_empty_headers_io.dart'
    as _i80;
import 'package:rest_json1/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i81;
import 'package:rest_json1/src/rest_json_protocol/model/operation_config.dart'
    as _i114;
import 'package:rest_json1/src/rest_json_protocol/model/payload_config.dart'
    as _i105;
import 'package:rest_json1/src/rest_json_protocol/model/player_action.dart'
    as _i84;
import 'package:rest_json1/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i82;
import 'package:rest_json1/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i83;
import 'package:rest_json1/src/rest_json_protocol/model/post_union_with_json_name_input.dart'
    as _i85;
import 'package:rest_json1/src/rest_json_protocol/model/post_union_with_json_name_output.dart'
    as _i86;
import 'package:rest_json1/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i88;
import 'package:rest_json1/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart'
    as _i89;
import 'package:rest_json1/src/rest_json_protocol/model/query_precedence_input.dart'
    as _i90;
import 'package:rest_json1/src/rest_json_protocol/model/recursive_shapes_input_output.dart'
    as _i91;
import 'package:rest_json1/src/rest_json_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i92;
import 'package:rest_json1/src/rest_json_protocol/model/recursive_shapes_input_output_nested2.dart'
    as _i93;
import 'package:rest_json1/src/rest_json_protocol/model/renamed_greeting.dart'
    as _i44;
import 'package:rest_json1/src/rest_json_protocol/model/response_code_http_fallback_input_output.dart'
    as _i94;
import 'package:rest_json1/src/rest_json_protocol/model/response_code_required_output.dart'
    as _i95;
import 'package:rest_json1/src/rest_json_protocol/model/retry_config.dart'
    as _i112;
import 'package:rest_json1/src/rest_json_protocol/model/retry_mode.dart'
    as _i107;
import 'package:rest_json1/src/rest_json_protocol/model/s3_addressing_style.dart'
    as _i109;
import 'package:rest_json1/src/rest_json_protocol/model/s3_config.dart'
    as _i110;
import 'package:rest_json1/src/rest_json_protocol/model/scoped_config.dart'
    as _i115;
import 'package:rest_json1/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i96;
import 'package:rest_json1/src/rest_json_protocol/model/simple_union.dart'
    as _i75;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_input_output.dart'
    as _i97;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_require_length_input.dart'
    as _i98;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart'
    as _i99;
import 'package:rest_json1/src/rest_json_protocol/model/string_enum.dart'
    as _i18;
import 'package:rest_json1/src/rest_json_protocol/model/string_payload_input.dart'
    as _i33;
import 'package:rest_json1/src/rest_json_protocol/model/structure_list_member.dart'
    as _i39;
import 'package:rest_json1/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i100;
import 'package:rest_json1/src/rest_json_protocol/model/test_config.dart'
    as _i101;
import 'package:rest_json1/src/rest_json_protocol/model/test_no_payload_input_output.dart'
    as _i102;
import 'package:rest_json1/src/rest_json_protocol/model/test_payload_blob_input_output.dart'
    as _i103;
import 'package:rest_json1/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i104;
import 'package:rest_json1/src/rest_json_protocol/model/timestamp_format_headers_io.dart'
    as _i106;
import 'package:rest_json1/src/rest_json_protocol/model/union_input_output.dart'
    as _i43;
import 'package:rest_json1/src/rest_json_protocol/model/union_with_json_name.dart'
    as _i87;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AllQueryStringTypesInput.serializers,
  ..._i3.FooEnum.serializers,
  ..._i4.ConstantAndVariableQueryStringInput.serializers,
  ..._i5.ConstantQueryStringInput.serializers,
  ..._i6.DocumentTypeInputOutput.serializers,
  ..._i7.DocumentTypeAsPayloadInputOutput.serializers,
  ..._i8.EmptyInputAndEmptyOutputInput.serializers,
  ..._i9.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i10.HostLabelInput.serializers,
  ..._i11.GreetingWithErrorsOutput.serializers,
  ..._i12.ComplexError.serializers,
  ..._i13.ComplexNestedErrorData.serializers,
  ..._i14.FooError.serializers,
  ..._i15.InvalidGreeting.serializers,
  ..._i16.HttpChecksumRequiredInputOutput.serializers,
  ..._i17.EnumPayloadInput.serializers,
  ..._i18.StringEnum.serializers,
  ..._i19.HttpPayloadTraitsInputOutput.serializers,
  ..._i20.HttpPayloadTraitsWithMediaTypeInputOutput.serializers,
  ..._i21.HttpPayloadWithStructureInputOutput.serializers,
  ..._i22.NestedPayload.serializers,
  ..._i23.HttpPrefixHeadersInput.serializers,
  ..._i24.HttpPrefixHeadersOutput.serializers,
  ..._i25.HttpPrefixHeadersInResponseOutput.serializers,
  ..._i26.HttpPrefixHeadersInResponseInput.serializers,
  ..._i27.HttpRequestWithFloatLabelsInput.serializers,
  ..._i28.HttpRequestWithGreedyLabelInPathInput.serializers,
  ..._i29.HttpRequestWithLabelsInput.serializers,
  ..._i30.HttpRequestWithLabelsAndTimestampFormatInput.serializers,
  ..._i31.HttpRequestWithRegexLiteralInput.serializers,
  ..._i32.HttpResponseCodeOutput.serializers,
  ..._i33.StringPayloadInput.serializers,
  ..._i34.IgnoreQueryParamsInResponseOutput.serializers,
  ..._i35.InputAndOutputWithHeadersIo.serializers,
  ..._i36.JsonBlobsInputOutput.serializers,
  ..._i37.JsonEnumsInputOutput.serializers,
  ..._i38.JsonListsInputOutput.serializers,
  ..._i39.StructureListMember.serializers,
  ..._i40.JsonMapsInputOutput.serializers,
  ..._i41.GreetingStruct.serializers,
  ..._i42.JsonTimestampsInputOutput.serializers,
  ..._i43.UnionInputOutput.serializers,
  ..._i44.RenamedGreeting.serializers,
  ..._i45.MyUnion.serializers,
  ..._i46.MalformedAcceptWithGenericStringInput.serializers,
  ..._i47.MalformedAcceptWithPayloadOutput.serializers,
  ..._i48.MalformedBlobInput.serializers,
  ..._i49.MalformedBooleanInput.serializers,
  ..._i50.MalformedByteInput.serializers,
  ..._i51.MalformedContentTypeWithGenericStringInput.serializers,
  ..._i52.MalformedContentTypeWithPayloadInput.serializers,
  ..._i53.MalformedDoubleInput.serializers,
  ..._i54.MalformedFloatInput.serializers,
  ..._i55.MalformedIntegerInput.serializers,
  ..._i56.MalformedListInput.serializers,
  ..._i57.MalformedLongInput.serializers,
  ..._i58.MalformedMapInput.serializers,
  ..._i59.MalformedRequestBodyInput.serializers,
  ..._i60.MalformedSetInput.serializers,
  ..._i61.MalformedShortInput.serializers,
  ..._i62.MalformedStringInput.serializers,
  ..._i63.MalformedTimestampBodyDateTimeInput.serializers,
  ..._i64.MalformedTimestampBodyDefaultInput.serializers,
  ..._i65.MalformedTimestampBodyHttpDateInput.serializers,
  ..._i66.MalformedTimestampHeaderDateTimeInput.serializers,
  ..._i67.MalformedTimestampHeaderDefaultInput.serializers,
  ..._i68.MalformedTimestampHeaderEpochInput.serializers,
  ..._i69.MalformedTimestampPathDefaultInput.serializers,
  ..._i70.MalformedTimestampPathEpochInput.serializers,
  ..._i71.MalformedTimestampPathHttpDateInput.serializers,
  ..._i72.MalformedTimestampQueryDefaultInput.serializers,
  ..._i73.MalformedTimestampQueryEpochInput.serializers,
  ..._i74.MalformedTimestampQueryHttpDateInput.serializers,
  ..._i75.SimpleUnion.serializers,
  ..._i76.MalformedUnionInput.serializers,
  ..._i77.MediaTypeHeaderInput.serializers,
  ..._i78.MediaTypeHeaderOutput.serializers,
  ..._i79.NoInputAndOutputOutput.serializers,
  ..._i80.NullAndEmptyHeadersIo.serializers,
  ..._i81.OmitsNullSerializesEmptyStringInput.serializers,
  ..._i82.PostPlayerActionInput.serializers,
  ..._i83.PostPlayerActionOutput.serializers,
  ..._i84.PlayerAction.serializers,
  ..._i85.PostUnionWithJsonNameInput.serializers,
  ..._i86.PostUnionWithJsonNameOutput.serializers,
  ..._i87.UnionWithJsonName.serializers,
  ..._i88.QueryIdempotencyTokenAutoFillInput.serializers,
  ..._i89.QueryParamsAsStringListMapInput.serializers,
  ..._i90.QueryPrecedenceInput.serializers,
  ..._i91.RecursiveShapesInputOutput.serializers,
  ..._i92.RecursiveShapesInputOutputNested1.serializers,
  ..._i93.RecursiveShapesInputOutputNested2.serializers,
  ..._i94.ResponseCodeHttpFallbackInputOutput.serializers,
  ..._i95.ResponseCodeRequiredOutput.serializers,
  ..._i96.SimpleScalarPropertiesInputOutput.serializers,
  ..._i97.StreamingTraitsInputOutput.serializers,
  ..._i98.StreamingTraitsRequireLengthInput.serializers,
  ..._i99.StreamingTraitsWithMediaTypeInputOutput.serializers,
  ..._i100.TestBodyStructureInputOutput.serializers,
  ..._i101.TestConfig.serializers,
  ..._i102.TestNoPayloadInputOutput.serializers,
  ..._i103.TestPayloadBlobInputOutput.serializers,
  ..._i104.TestPayloadStructureInputOutput.serializers,
  ..._i105.PayloadConfig.serializers,
  ..._i106.TimestampFormatHeadersIo.serializers,
  ..._i107.RetryMode.serializers,
  ..._i108.EnvironmentConfig.serializers,
  ..._i109.S3AddressingStyle.serializers,
  ..._i110.S3Config.serializers,
  ..._i111.FileConfigSettings.serializers,
  ..._i112.RetryConfig.serializers,
  ..._i113.ClientConfig.serializers,
  ..._i114.OperationConfig.serializers,
  ..._i115.ScopedConfig.serializers,
  ..._i116.AwsConfig.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i117.BuiltList, [FullType(bool)]):
      _i117.ListBuilder<bool>.new,
  const FullType(_i117.BuiltList, [FullType(double)]):
      _i117.ListBuilder<double>.new,
  const FullType(_i117.BuiltList, [FullType(_i3.FooEnum)]):
      _i117.ListBuilder<_i3.FooEnum>.new,
  const FullType(_i117.BuiltList, [FullType(int)]): _i117.ListBuilder<int>.new,
  const FullType(_i117.BuiltSet, [FullType(int)]): _i117.SetBuilder<int>.new,
  const FullType(_i117.BuiltListMultimap, [FullType(String), FullType(String)]):
      _i117.ListMultimapBuilder<String, String>.new,
  const FullType(_i117.BuiltList, [FullType(String)]):
      _i117.ListBuilder<String>.new,
  const FullType(_i117.BuiltSet, [FullType(String)]):
      _i117.SetBuilder<String>.new,
  const FullType(_i117.BuiltList, [FullType(DateTime)]):
      _i117.ListBuilder<DateTime>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType(String)]):
      _i117.MapBuilder<String, String>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType(_i3.FooEnum)]):
      _i117.MapBuilder<String, _i3.FooEnum>.new,
  const FullType(_i117.BuiltSet, [FullType(_i3.FooEnum)]):
      _i117.SetBuilder<_i3.FooEnum>.new,
  const FullType(_i117.BuiltList, [
    FullType(_i117.BuiltList, [FullType(String)])
  ]): _i117.ListBuilder<_i117.BuiltList<String>>.new,
  const FullType(_i117.BuiltList, [FullType.nullable(String)]):
      _i117.ListBuilder<String?>.new,
  const FullType(_i117.BuiltList, [FullType(_i39.StructureListMember)]):
      _i117.ListBuilder<_i39.StructureListMember>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType(bool)]):
      _i117.MapBuilder<String, bool>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType(int)]):
      _i117.MapBuilder<String, int>.new,
  const FullType(_i117.BuiltSetMultimap, [FullType(String), FullType(String)]):
      _i117.SetMultimapBuilder<String, String>.new,
  const FullType(
          _i117.BuiltMap, [FullType(String), FullType(_i41.GreetingStruct)]):
      _i117.MapBuilder<String, _i41.GreetingStruct>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType.nullable(bool)]):
      _i117.MapBuilder<String, bool?>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType.nullable(int)]):
      _i117.MapBuilder<String, int?>.new,
  const FullType(_i117.BuiltMap, [FullType(String), FullType.nullable(String)]):
      _i117.MapBuilder<String, String?>.new,
  const FullType(_i117.BuiltMap, [
    FullType(String),
    FullType.nullable(_i41.GreetingStruct)
  ]): _i117.MapBuilder<String, _i41.GreetingStruct?>.new,
  const FullType(_i117.BuiltSet, [FullType(_i118.Uint8List)]):
      _i117.SetBuilder<_i118.Uint8List>.new,
  const FullType(_i117.BuiltMap, [
    FullType(String),
    FullType(_i111.FileConfigSettings)
  ]): _i117.MapBuilder<String, _i111.FileConfigSettings>.new
};
