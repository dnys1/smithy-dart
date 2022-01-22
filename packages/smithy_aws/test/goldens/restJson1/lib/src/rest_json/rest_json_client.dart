// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.rest_json_client;

import 'dart:async' as _i1;

import 'package:rest_json1/src/rest_json/model/all_query_string_types_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/model/constant_and_variable_query_string_input.dart'
    as _i4;
import 'package:rest_json1/src/rest_json/model/constant_query_string_input.dart'
    as _i6;
import 'package:rest_json1/src/rest_json/model/document_type_as_payload_input_output.dart'
    as _i10;
import 'package:rest_json1/src/rest_json/model/document_type_input_output.dart'
    as _i8;
import 'package:rest_json1/src/rest_json/model/empty_input_and_empty_output_input.dart'
    as _i13;
import 'package:rest_json1/src/rest_json/model/empty_input_and_empty_output_output.dart'
    as _i12;
import 'package:rest_json1/src/rest_json/model/enum_payload_input.dart' as _i24;
import 'package:rest_json1/src/rest_json/model/greeting_struct.dart' as _i68;
import 'package:rest_json1/src/rest_json/model/greeting_with_errors_output.dart'
    as _i19;
import 'package:rest_json1/src/rest_json/model/host_label_input.dart' as _i17;
import 'package:rest_json1/src/rest_json/model/http_checksum_required_input_output.dart'
    as _i22;
import 'package:rest_json1/src/rest_json/model/http_payload_traits_input_output.dart'
    as _i26;
import 'package:rest_json1/src/rest_json/model/http_payload_traits_with_media_type_input_output.dart'
    as _i28;
import 'package:rest_json1/src/rest_json/model/http_payload_with_structure_input_output.dart'
    as _i30;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_input.dart'
    as _i36;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_output.dart'
    as _i35;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_input.dart'
    as _i33;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_output.dart'
    as _i32;
import 'package:rest_json1/src/rest_json/model/http_request_with_float_labels_input.dart'
    as _i38;
import 'package:rest_json1/src/rest_json/model/http_request_with_greedy_label_in_path_input.dart'
    as _i40;
import 'package:rest_json1/src/rest_json/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i44;
import 'package:rest_json1/src/rest_json/model/http_request_with_labels_input.dart'
    as _i42;
import 'package:rest_json1/src/rest_json/model/http_request_with_regex_literal_input.dart'
    as _i46;
import 'package:rest_json1/src/rest_json/model/http_response_code_output.dart'
    as _i48;
import 'package:rest_json1/src/rest_json/model/ignore_query_params_in_response_output.dart'
    as _i52;
import 'package:rest_json1/src/rest_json/model/input_and_output_with_headers_io.dart'
    as _i54;
import 'package:rest_json1/src/rest_json/model/json_blobs_input_output.dart'
    as _i56;
import 'package:rest_json1/src/rest_json/model/json_enums_input_output.dart'
    as _i58;
import 'package:rest_json1/src/rest_json/model/json_lists_input_output.dart'
    as _i60;
import 'package:rest_json1/src/rest_json/model/json_maps_input_output.dart'
    as _i62;
import 'package:rest_json1/src/rest_json/model/json_timestamps_input_output.dart'
    as _i64;
import 'package:rest_json1/src/rest_json/model/malformed_accept_with_generic_string_input.dart'
    as _i70;
import 'package:rest_json1/src/rest_json/model/malformed_accept_with_payload_output.dart'
    as _i72;
import 'package:rest_json1/src/rest_json/model/malformed_blob_input.dart'
    as _i74;
import 'package:rest_json1/src/rest_json/model/malformed_boolean_input.dart'
    as _i76;
import 'package:rest_json1/src/rest_json/model/malformed_byte_input.dart'
    as _i78;
import 'package:rest_json1/src/rest_json/model/malformed_content_type_with_generic_string_input.dart'
    as _i81;
import 'package:rest_json1/src/rest_json/model/malformed_content_type_with_payload_input.dart'
    as _i83;
import 'package:rest_json1/src/rest_json/model/malformed_double_input.dart'
    as _i86;
import 'package:rest_json1/src/rest_json/model/malformed_float_input.dart'
    as _i88;
import 'package:rest_json1/src/rest_json/model/malformed_integer_input.dart'
    as _i90;
import 'package:rest_json1/src/rest_json/model/malformed_list_input.dart'
    as _i92;
import 'package:rest_json1/src/rest_json/model/malformed_long_input.dart'
    as _i94;
import 'package:rest_json1/src/rest_json/model/malformed_map_input.dart'
    as _i96;
import 'package:rest_json1/src/rest_json/model/malformed_request_body_input.dart'
    as _i98;
import 'package:rest_json1/src/rest_json/model/malformed_set_input.dart'
    as _i100;
import 'package:rest_json1/src/rest_json/model/malformed_short_input.dart'
    as _i102;
import 'package:rest_json1/src/rest_json/model/malformed_string_input.dart'
    as _i104;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_body_date_time_input.dart'
    as _i106;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_body_default_input.dart'
    as _i108;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_body_http_date_input.dart'
    as _i110;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_date_time_input.dart'
    as _i112;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_default_input.dart'
    as _i114;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_epoch_input.dart'
    as _i116;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_path_default_input.dart'
    as _i118;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_path_epoch_input.dart'
    as _i120;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_path_http_date_input.dart'
    as _i122;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_default_input.dart'
    as _i124;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_epoch_input.dart'
    as _i126;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_http_date_input.dart'
    as _i128;
import 'package:rest_json1/src/rest_json/model/malformed_union_input.dart'
    as _i130;
import 'package:rest_json1/src/rest_json/model/media_type_header_input.dart'
    as _i133;
import 'package:rest_json1/src/rest_json/model/media_type_header_output.dart'
    as _i132;
import 'package:rest_json1/src/rest_json/model/no_input_and_output_output.dart'
    as _i136;
import 'package:rest_json1/src/rest_json/model/null_and_empty_headers_io.dart'
    as _i138;
import 'package:rest_json1/src/rest_json/model/omits_null_serializes_empty_string_input.dart'
    as _i141;
import 'package:rest_json1/src/rest_json/model/post_player_action_input.dart'
    as _i144;
import 'package:rest_json1/src/rest_json/model/post_player_action_output.dart'
    as _i143;
import 'package:rest_json1/src/rest_json/model/query_idempotency_token_auto_fill_input.dart'
    as _i146;
import 'package:rest_json1/src/rest_json/model/query_params_as_string_list_map_input.dart'
    as _i148;
import 'package:rest_json1/src/rest_json/model/query_precedence_input.dart'
    as _i150;
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output.dart'
    as _i152;
import 'package:rest_json1/src/rest_json/model/simple_scalar_properties_input_output.dart'
    as _i154;
import 'package:rest_json1/src/rest_json/model/streaming_traits_input_output.dart'
    as _i156;
import 'package:rest_json1/src/rest_json/model/streaming_traits_require_length_input_output.dart'
    as _i158;
import 'package:rest_json1/src/rest_json/model/streaming_traits_with_media_type_input_output.dart'
    as _i160;
import 'package:rest_json1/src/rest_json/model/string_payload_input.dart'
    as _i50;
import 'package:rest_json1/src/rest_json/model/test_body_structure_input_output.dart'
    as _i162;
import 'package:rest_json1/src/rest_json/model/test_no_payload_input_output.dart'
    as _i164;
import 'package:rest_json1/src/rest_json/model/test_payload_blob_input_output.dart'
    as _i166;
import 'package:rest_json1/src/rest_json/model/test_payload_structure_input_output.dart'
    as _i168;
import 'package:rest_json1/src/rest_json/model/timestamp_format_headers_io.dart'
    as _i170;
import 'package:rest_json1/src/rest_json/model/union_input_output.dart' as _i66;
import 'package:rest_json1/src/rest_json/operation/all_query_string_types.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/operation/constant_and_variable_query_string.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/constant_query_string.dart'
    as _i7;
import 'package:rest_json1/src/rest_json/operation/document_type.dart' as _i9;
import 'package:rest_json1/src/rest_json/operation/document_type_as_payload.dart'
    as _i11;
import 'package:rest_json1/src/rest_json/operation/empty_input_and_empty_output.dart'
    as _i14;
import 'package:rest_json1/src/rest_json/operation/endpoint_operation.dart'
    as _i15;
import 'package:rest_json1/src/rest_json/operation/endpoint_with_host_label_operation.dart'
    as _i18;
import 'package:rest_json1/src/rest_json/operation/greeting_with_errors.dart'
    as _i20;
import 'package:rest_json1/src/rest_json/operation/host_with_path_operation.dart'
    as _i21;
import 'package:rest_json1/src/rest_json/operation/http_checksum_required.dart'
    as _i23;
import 'package:rest_json1/src/rest_json/operation/http_enum_payload.dart'
    as _i25;
import 'package:rest_json1/src/rest_json/operation/http_payload_traits.dart'
    as _i27;
import 'package:rest_json1/src/rest_json/operation/http_payload_traits_with_media_type.dart'
    as _i29;
import 'package:rest_json1/src/rest_json/operation/http_payload_with_structure.dart'
    as _i31;
import 'package:rest_json1/src/rest_json/operation/http_prefix_headers.dart'
    as _i34;
import 'package:rest_json1/src/rest_json/operation/http_prefix_headers_in_response.dart'
    as _i37;
import 'package:rest_json1/src/rest_json/operation/http_request_with_float_labels.dart'
    as _i39;
import 'package:rest_json1/src/rest_json/operation/http_request_with_greedy_label_in_path.dart'
    as _i41;
import 'package:rest_json1/src/rest_json/operation/http_request_with_labels.dart'
    as _i43;
import 'package:rest_json1/src/rest_json/operation/http_request_with_labels_and_timestamp_format.dart'
    as _i45;
import 'package:rest_json1/src/rest_json/operation/http_request_with_regex_literal.dart'
    as _i47;
import 'package:rest_json1/src/rest_json/operation/http_response_code.dart'
    as _i49;
import 'package:rest_json1/src/rest_json/operation/http_string_payload.dart'
    as _i51;
import 'package:rest_json1/src/rest_json/operation/ignore_query_params_in_response.dart'
    as _i53;
import 'package:rest_json1/src/rest_json/operation/input_and_output_with_headers.dart'
    as _i55;
import 'package:rest_json1/src/rest_json/operation/json_blobs.dart' as _i57;
import 'package:rest_json1/src/rest_json/operation/json_enums.dart' as _i59;
import 'package:rest_json1/src/rest_json/operation/json_lists.dart' as _i61;
import 'package:rest_json1/src/rest_json/operation/json_maps.dart' as _i63;
import 'package:rest_json1/src/rest_json/operation/json_timestamps.dart'
    as _i65;
import 'package:rest_json1/src/rest_json/operation/json_unions.dart' as _i67;
import 'package:rest_json1/src/rest_json/operation/malformed_accept_with_body.dart'
    as _i69;
import 'package:rest_json1/src/rest_json/operation/malformed_accept_with_generic_string.dart'
    as _i71;
import 'package:rest_json1/src/rest_json/operation/malformed_accept_with_payload.dart'
    as _i73;
import 'package:rest_json1/src/rest_json/operation/malformed_blob.dart' as _i75;
import 'package:rest_json1/src/rest_json/operation/malformed_boolean.dart'
    as _i77;
import 'package:rest_json1/src/rest_json/operation/malformed_byte.dart' as _i79;
import 'package:rest_json1/src/rest_json/operation/malformed_content_type_with_body.dart'
    as _i80;
import 'package:rest_json1/src/rest_json/operation/malformed_content_type_with_generic_string.dart'
    as _i82;
import 'package:rest_json1/src/rest_json/operation/malformed_content_type_with_payload.dart'
    as _i84;
import 'package:rest_json1/src/rest_json/operation/malformed_content_type_without_body.dart'
    as _i85;
import 'package:rest_json1/src/rest_json/operation/malformed_double.dart'
    as _i87;
import 'package:rest_json1/src/rest_json/operation/malformed_float.dart'
    as _i89;
import 'package:rest_json1/src/rest_json/operation/malformed_integer.dart'
    as _i91;
import 'package:rest_json1/src/rest_json/operation/malformed_list.dart' as _i93;
import 'package:rest_json1/src/rest_json/operation/malformed_long.dart' as _i95;
import 'package:rest_json1/src/rest_json/operation/malformed_map.dart' as _i97;
import 'package:rest_json1/src/rest_json/operation/malformed_request_body.dart'
    as _i99;
import 'package:rest_json1/src/rest_json/operation/malformed_set.dart' as _i101;
import 'package:rest_json1/src/rest_json/operation/malformed_short.dart'
    as _i103;
import 'package:rest_json1/src/rest_json/operation/malformed_string.dart'
    as _i105;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_body_date_time.dart'
    as _i107;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_body_default.dart'
    as _i109;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_body_http_date.dart'
    as _i111;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_header_date_time.dart'
    as _i113;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_header_default.dart'
    as _i115;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_header_epoch.dart'
    as _i117;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_path_default.dart'
    as _i119;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_path_epoch.dart'
    as _i121;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_path_http_date.dart'
    as _i123;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_query_default.dart'
    as _i125;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_query_epoch.dart'
    as _i127;
import 'package:rest_json1/src/rest_json/operation/malformed_timestamp_query_http_date.dart'
    as _i129;
import 'package:rest_json1/src/rest_json/operation/malformed_union.dart'
    as _i131;
import 'package:rest_json1/src/rest_json/operation/media_type_header.dart'
    as _i134;
import 'package:rest_json1/src/rest_json/operation/no_input_and_no_output.dart'
    as _i135;
import 'package:rest_json1/src/rest_json/operation/no_input_and_output.dart'
    as _i137;
import 'package:rest_json1/src/rest_json/operation/null_and_empty_headers_client.dart'
    as _i139;
import 'package:rest_json1/src/rest_json/operation/null_and_empty_headers_server.dart'
    as _i140;
import 'package:rest_json1/src/rest_json/operation/omits_null_serializes_empty_string.dart'
    as _i142;
import 'package:rest_json1/src/rest_json/operation/post_player_action.dart'
    as _i145;
import 'package:rest_json1/src/rest_json/operation/query_idempotency_token_auto_fill.dart'
    as _i147;
import 'package:rest_json1/src/rest_json/operation/query_params_as_string_list_map.dart'
    as _i149;
import 'package:rest_json1/src/rest_json/operation/query_precedence.dart'
    as _i151;
import 'package:rest_json1/src/rest_json/operation/recursive_shapes.dart'
    as _i153;
import 'package:rest_json1/src/rest_json/operation/simple_scalar_properties.dart'
    as _i155;
import 'package:rest_json1/src/rest_json/operation/streaming_traits.dart'
    as _i157;
import 'package:rest_json1/src/rest_json/operation/streaming_traits_require_length.dart'
    as _i159;
import 'package:rest_json1/src/rest_json/operation/streaming_traits_with_media_type.dart'
    as _i161;
import 'package:rest_json1/src/rest_json/operation/test_body_structure.dart'
    as _i163;
import 'package:rest_json1/src/rest_json/operation/test_no_payload.dart'
    as _i165;
import 'package:rest_json1/src/rest_json/operation/test_payload_blob.dart'
    as _i167;
import 'package:rest_json1/src/rest_json/operation/test_payload_structure.dart'
    as _i169;
import 'package:rest_json1/src/rest_json/operation/timestamp_format_headers.dart'
    as _i171;
import 'package:rest_json1/src/rest_json/operation/unit_input_and_output.dart'
    as _i172;
import 'package:smithy/smithy.dart' as _i16;

class RestJsonClient {
  RestJsonClient();

  _i1.Future<void> allQueryStringTypesOperation(
      _i2.AllQueryStringTypesInput input) {
    return _i3.AllQueryStringTypesOperation().run(input);
  }

  _i1.Future<void> constantAndVariableQueryStringOperation(
      _i4.ConstantAndVariableQueryStringInput input) {
    return _i5.ConstantAndVariableQueryStringOperation().run(input);
  }

  _i1.Future<void> constantQueryStringOperation(
      _i6.ConstantQueryStringInput input) {
    return _i7.ConstantQueryStringOperation().run(input);
  }

  _i1.Future<_i8.DocumentTypeInputOutput> documentTypeOperation(
      _i8.DocumentTypeInputOutput input) {
    return _i9.DocumentTypeOperation().run(input);
  }

  _i1.Future<_i10.DocumentTypeAsPayloadInputOutput>
      documentTypeAsPayloadOperation(
          _i10.DocumentTypeAsPayloadInputOutput input) {
    return _i11.DocumentTypeAsPayloadOperation().run(input);
  }

  _i1.Future<_i12.EmptyInputAndEmptyOutputOutput>
      emptyInputAndEmptyOutputOperation(
          _i13.EmptyInputAndEmptyOutputInput input) {
    return _i14.EmptyInputAndEmptyOutputOperation().run(input);
  }

  _i1.Future<void> endpointOperation() {
    return _i15.EndpointOperation().run(const _i16.Unit());
  }

  _i1.Future<void> endpointWithHostLabelOperation(_i17.HostLabelInput input) {
    return _i18.EndpointWithHostLabelOperation().run(input);
  }

  _i1.Future<_i19.GreetingWithErrorsOutput> greetingWithErrorsOperation() {
    return _i20.GreetingWithErrorsOperation().run(const _i16.Unit());
  }

  _i1.Future<void> hostWithPathOperation() {
    return _i21.HostWithPathOperation().run(const _i16.Unit());
  }

  _i1.Future<_i22.HttpChecksumRequiredInputOutput>
      httpChecksumRequiredOperation(
          _i22.HttpChecksumRequiredInputOutput input) {
    return _i23.HttpChecksumRequiredOperation().run(input);
  }

  _i1.Future<_i24.EnumPayloadInput> httpEnumPayloadOperation(
      _i24.EnumPayloadInput input) {
    return _i25.HttpEnumPayloadOperation().run(input);
  }

  _i1.Future<_i26.HttpPayloadTraitsInputOutput> httpPayloadTraitsOperation(
      _i26.HttpPayloadTraitsInputOutput input) {
    return _i27.HttpPayloadTraitsOperation().run(input);
  }

  _i1.Future<_i28.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaTypeOperation(
          _i28.HttpPayloadTraitsWithMediaTypeInputOutput input) {
    return _i29.HttpPayloadTraitsWithMediaTypeOperation().run(input);
  }

  _i1.Future<_i30.HttpPayloadWithStructureInputOutput>
      httpPayloadWithStructureOperation(
          _i30.HttpPayloadWithStructureInputOutput input) {
    return _i31.HttpPayloadWithStructureOperation().run(input);
  }

  _i1.Future<_i32.HttpPrefixHeadersOutput> httpPrefixHeadersOperation(
      _i33.HttpPrefixHeadersInput input) {
    return _i34.HttpPrefixHeadersOperation().run(input);
  }

  _i1.Future<_i35.HttpPrefixHeadersInResponseOutput>
      httpPrefixHeadersInResponseOperation(
          _i36.HttpPrefixHeadersInResponseInput input) {
    return _i37.HttpPrefixHeadersInResponseOperation().run(input);
  }

  _i1.Future<void> httpRequestWithFloatLabelsOperation(
      _i38.HttpRequestWithFloatLabelsInput input) {
    return _i39.HttpRequestWithFloatLabelsOperation().run(input);
  }

  _i1.Future<void> httpRequestWithGreedyLabelInPathOperation(
      _i40.HttpRequestWithGreedyLabelInPathInput input) {
    return _i41.HttpRequestWithGreedyLabelInPathOperation().run(input);
  }

  _i1.Future<void> httpRequestWithLabelsOperation(
      _i42.HttpRequestWithLabelsInput input) {
    return _i43.HttpRequestWithLabelsOperation().run(input);
  }

  _i1.Future<void> httpRequestWithLabelsAndTimestampFormatOperation(
      _i44.HttpRequestWithLabelsAndTimestampFormatInput input) {
    return _i45.HttpRequestWithLabelsAndTimestampFormatOperation().run(input);
  }

  _i1.Future<void> httpRequestWithRegexLiteralOperation(
      _i46.HttpRequestWithRegexLiteralInput input) {
    return _i47.HttpRequestWithRegexLiteralOperation().run(input);
  }

  _i1.Future<_i48.HttpResponseCodeOutput> httpResponseCodeOperation() {
    return _i49.HttpResponseCodeOperation().run(const _i16.Unit());
  }

  _i1.Future<_i50.StringPayloadInput> httpStringPayloadOperation(
      _i50.StringPayloadInput input) {
    return _i51.HttpStringPayloadOperation().run(input);
  }

  _i1.Future<_i52.IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponseOperation() {
    return _i53.IgnoreQueryParamsInResponseOperation().run(const _i16.Unit());
  }

  _i1.Future<_i54.InputAndOutputWithHeadersIo>
      inputAndOutputWithHeadersOperation(
          _i54.InputAndOutputWithHeadersIo input) {
    return _i55.InputAndOutputWithHeadersOperation().run(input);
  }

  _i1.Future<_i56.JsonBlobsInputOutput> jsonBlobsOperation(
      _i56.JsonBlobsInputOutput input) {
    return _i57.JsonBlobsOperation().run(input);
  }

  _i1.Future<_i58.JsonEnumsInputOutput> jsonEnumsOperation(
      _i58.JsonEnumsInputOutput input) {
    return _i59.JsonEnumsOperation().run(input);
  }

  _i1.Future<_i60.JsonListsInputOutput> jsonListsOperation(
      _i60.JsonListsInputOutput input) {
    return _i61.JsonListsOperation().run(input);
  }

  _i1.Future<_i62.JsonMapsInputOutput> jsonMapsOperation(
      _i62.JsonMapsInputOutput input) {
    return _i63.JsonMapsOperation().run(input);
  }

  _i1.Future<_i64.JsonTimestampsInputOutput> jsonTimestampsOperation(
      _i64.JsonTimestampsInputOutput input) {
    return _i65.JsonTimestampsOperation().run(input);
  }

  _i1.Future<_i66.UnionInputOutput> jsonUnionsOperation(
      _i66.UnionInputOutput input) {
    return _i67.JsonUnionsOperation().run(input);
  }

  _i1.Future<_i68.GreetingStruct> malformedAcceptWithBodyOperation() {
    return _i69.MalformedAcceptWithBodyOperation().run(const _i16.Unit());
  }

  _i1.Future<void> malformedAcceptWithGenericStringOperation(
      _i70.MalformedAcceptWithGenericStringInput input) {
    return _i71.MalformedAcceptWithGenericStringOperation().run(input);
  }

  _i1.Future<_i72.MalformedAcceptWithPayloadOutput>
      malformedAcceptWithPayloadOperation() {
    return _i73.MalformedAcceptWithPayloadOperation().run(const _i16.Unit());
  }

  _i1.Future<void> malformedBlobOperation(_i74.MalformedBlobInput input) {
    return _i75.MalformedBlobOperation().run(input);
  }

  _i1.Future<void> malformedBooleanOperation(_i76.MalformedBooleanInput input) {
    return _i77.MalformedBooleanOperation().run(input);
  }

  _i1.Future<void> malformedByteOperation(_i78.MalformedByteInput input) {
    return _i79.MalformedByteOperation().run(input);
  }

  _i1.Future<void> malformedContentTypeWithBodyOperation(
      _i68.GreetingStruct input) {
    return _i80.MalformedContentTypeWithBodyOperation().run(input);
  }

  _i1.Future<void> malformedContentTypeWithGenericStringOperation(
      _i81.MalformedContentTypeWithGenericStringInput input) {
    return _i82.MalformedContentTypeWithGenericStringOperation().run(input);
  }

  _i1.Future<void> malformedContentTypeWithPayloadOperation(
      _i83.MalformedContentTypeWithPayloadInput input) {
    return _i84.MalformedContentTypeWithPayloadOperation().run(input);
  }

  _i1.Future<void> malformedContentTypeWithoutBodyOperation() {
    return _i85.MalformedContentTypeWithoutBodyOperation()
        .run(const _i16.Unit());
  }

  _i1.Future<void> malformedDoubleOperation(_i86.MalformedDoubleInput input) {
    return _i87.MalformedDoubleOperation().run(input);
  }

  _i1.Future<void> malformedFloatOperation(_i88.MalformedFloatInput input) {
    return _i89.MalformedFloatOperation().run(input);
  }

  _i1.Future<void> malformedIntegerOperation(_i90.MalformedIntegerInput input) {
    return _i91.MalformedIntegerOperation().run(input);
  }

  _i1.Future<void> malformedListOperation(_i92.MalformedListInput input) {
    return _i93.MalformedListOperation().run(input);
  }

  _i1.Future<void> malformedLongOperation(_i94.MalformedLongInput input) {
    return _i95.MalformedLongOperation().run(input);
  }

  _i1.Future<void> malformedMapOperation(_i96.MalformedMapInput input) {
    return _i97.MalformedMapOperation().run(input);
  }

  _i1.Future<void> malformedRequestBodyOperation(
      _i98.MalformedRequestBodyInput input) {
    return _i99.MalformedRequestBodyOperation().run(input);
  }

  _i1.Future<void> malformedSetOperation(_i100.MalformedSetInput input) {
    return _i101.MalformedSetOperation().run(input);
  }

  _i1.Future<void> malformedShortOperation(_i102.MalformedShortInput input) {
    return _i103.MalformedShortOperation().run(input);
  }

  _i1.Future<void> malformedStringOperation(_i104.MalformedStringInput input) {
    return _i105.MalformedStringOperation().run(input);
  }

  _i1.Future<void> malformedTimestampBodyDateTimeOperation(
      _i106.MalformedTimestampBodyDateTimeInput input) {
    return _i107.MalformedTimestampBodyDateTimeOperation().run(input);
  }

  _i1.Future<void> malformedTimestampBodyDefaultOperation(
      _i108.MalformedTimestampBodyDefaultInput input) {
    return _i109.MalformedTimestampBodyDefaultOperation().run(input);
  }

  _i1.Future<void> malformedTimestampBodyHttpDateOperation(
      _i110.MalformedTimestampBodyHttpDateInput input) {
    return _i111.MalformedTimestampBodyHttpDateOperation().run(input);
  }

  _i1.Future<void> malformedTimestampHeaderDateTimeOperation(
      _i112.MalformedTimestampHeaderDateTimeInput input) {
    return _i113.MalformedTimestampHeaderDateTimeOperation().run(input);
  }

  _i1.Future<void> malformedTimestampHeaderDefaultOperation(
      _i114.MalformedTimestampHeaderDefaultInput input) {
    return _i115.MalformedTimestampHeaderDefaultOperation().run(input);
  }

  _i1.Future<void> malformedTimestampHeaderEpochOperation(
      _i116.MalformedTimestampHeaderEpochInput input) {
    return _i117.MalformedTimestampHeaderEpochOperation().run(input);
  }

  _i1.Future<void> malformedTimestampPathDefaultOperation(
      _i118.MalformedTimestampPathDefaultInput input) {
    return _i119.MalformedTimestampPathDefaultOperation().run(input);
  }

  _i1.Future<void> malformedTimestampPathEpochOperation(
      _i120.MalformedTimestampPathEpochInput input) {
    return _i121.MalformedTimestampPathEpochOperation().run(input);
  }

  _i1.Future<void> malformedTimestampPathHttpDateOperation(
      _i122.MalformedTimestampPathHttpDateInput input) {
    return _i123.MalformedTimestampPathHttpDateOperation().run(input);
  }

  _i1.Future<void> malformedTimestampQueryDefaultOperation(
      _i124.MalformedTimestampQueryDefaultInput input) {
    return _i125.MalformedTimestampQueryDefaultOperation().run(input);
  }

  _i1.Future<void> malformedTimestampQueryEpochOperation(
      _i126.MalformedTimestampQueryEpochInput input) {
    return _i127.MalformedTimestampQueryEpochOperation().run(input);
  }

  _i1.Future<void> malformedTimestampQueryHttpDateOperation(
      _i128.MalformedTimestampQueryHttpDateInput input) {
    return _i129.MalformedTimestampQueryHttpDateOperation().run(input);
  }

  _i1.Future<void> malformedUnionOperation(_i130.MalformedUnionInput input) {
    return _i131.MalformedUnionOperation().run(input);
  }

  _i1.Future<_i132.MediaTypeHeaderOutput> mediaTypeHeaderOperation(
      _i133.MediaTypeHeaderInput input) {
    return _i134.MediaTypeHeaderOperation().run(input);
  }

  _i1.Future<void> noInputAndNoOutputOperation() {
    return _i135.NoInputAndNoOutputOperation().run(const _i16.Unit());
  }

  _i1.Future<_i136.NoInputAndOutputOutput> noInputAndOutputOperation() {
    return _i137.NoInputAndOutputOperation().run(const _i16.Unit());
  }

  _i1.Future<_i138.NullAndEmptyHeadersIo> nullAndEmptyHeadersClientOperation(
      _i138.NullAndEmptyHeadersIo input) {
    return _i139.NullAndEmptyHeadersClientOperation().run(input);
  }

  _i1.Future<_i138.NullAndEmptyHeadersIo> nullAndEmptyHeadersServerOperation(
      _i138.NullAndEmptyHeadersIo input) {
    return _i140.NullAndEmptyHeadersServerOperation().run(input);
  }

  _i1.Future<void> omitsNullSerializesEmptyStringOperation(
      _i141.OmitsNullSerializesEmptyStringInput input) {
    return _i142.OmitsNullSerializesEmptyStringOperation().run(input);
  }

  _i1.Future<_i143.PostPlayerActionOutput> postPlayerActionOperation(
      _i144.PostPlayerActionInput input) {
    return _i145.PostPlayerActionOperation().run(input);
  }

  _i1.Future<void> queryIdempotencyTokenAutoFillOperation(
      _i146.QueryIdempotencyTokenAutoFillInput input) {
    return _i147.QueryIdempotencyTokenAutoFillOperation().run(input);
  }

  _i1.Future<void> queryParamsAsStringListMapOperation(
      _i148.QueryParamsAsStringListMapInput input) {
    return _i149.QueryParamsAsStringListMapOperation().run(input);
  }

  _i1.Future<void> queryPrecedenceOperation(_i150.QueryPrecedenceInput input) {
    return _i151.QueryPrecedenceOperation().run(input);
  }

  _i1.Future<_i152.RecursiveShapesInputOutput> recursiveShapesOperation(
      _i152.RecursiveShapesInputOutput input) {
    return _i153.RecursiveShapesOperation().run(input);
  }

  _i1.Future<_i154.SimpleScalarPropertiesInputOutput>
      simpleScalarPropertiesOperation(
          _i154.SimpleScalarPropertiesInputOutput input) {
    return _i155.SimpleScalarPropertiesOperation().run(input);
  }

  _i1.Future<_i156.StreamingTraitsInputOutput> streamingTraitsOperation(
      _i156.StreamingTraitsInputOutput input) {
    return _i157.StreamingTraitsOperation().run(input);
  }

  _i1.Future<_i158.StreamingTraitsRequireLengthInputOutput>
      streamingTraitsRequireLengthOperation(
          _i158.StreamingTraitsRequireLengthInputOutput input) {
    return _i159.StreamingTraitsRequireLengthOperation().run(input);
  }

  _i1.Future<_i160.StreamingTraitsWithMediaTypeInputOutput>
      streamingTraitsWithMediaTypeOperation(
          _i160.StreamingTraitsWithMediaTypeInputOutput input) {
    return _i161.StreamingTraitsWithMediaTypeOperation().run(input);
  }

  _i1.Future<_i162.TestBodyStructureInputOutput> testBodyStructureOperation(
      _i162.TestBodyStructureInputOutput input) {
    return _i163.TestBodyStructureOperation().run(input);
  }

  _i1.Future<_i164.TestNoPayloadInputOutput> testNoPayloadOperation(
      _i164.TestNoPayloadInputOutput input) {
    return _i165.TestNoPayloadOperation().run(input);
  }

  _i1.Future<_i166.TestPayloadBlobInputOutput> testPayloadBlobOperation(
      _i166.TestPayloadBlobInputOutput input) {
    return _i167.TestPayloadBlobOperation().run(input);
  }

  _i1.Future<_i168.TestPayloadStructureInputOutput>
      testPayloadStructureOperation(
          _i168.TestPayloadStructureInputOutput input) {
    return _i169.TestPayloadStructureOperation().run(input);
  }

  _i1.Future<_i170.TimestampFormatHeadersIo> timestampFormatHeadersOperation(
      _i170.TimestampFormatHeadersIo input) {
    return _i171.TimestampFormatHeadersOperation().run(input);
  }

  _i1.Future<void> unitInputAndOutputOperation() {
    return _i172.UnitInputAndOutputOperation().run(const _i16.Unit());
  }
}
