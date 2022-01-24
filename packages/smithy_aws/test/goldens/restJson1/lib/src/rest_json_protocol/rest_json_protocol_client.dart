// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.rest_json_protocol_client;

import 'dart:async' as _i1;

import 'package:rest_json1/src/rest_json_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/constant_query_string_input.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i10;
import 'package:rest_json1/src/rest_json_protocol/model/document_type_input_output.dart'
    as _i8;
import 'package:rest_json1/src/rest_json_protocol/model/empty_input_and_empty_output_input.dart'
    as _i13;
import 'package:rest_json1/src/rest_json_protocol/model/empty_input_and_empty_output_output.dart'
    as _i12;
import 'package:rest_json1/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i24;
import 'package:rest_json1/src/rest_json_protocol/model/greeting_struct.dart'
    as _i68;
import 'package:rest_json1/src/rest_json_protocol/model/greeting_with_errors_output.dart'
    as _i19;
import 'package:rest_json1/src/rest_json_protocol/model/host_label_input.dart'
    as _i17;
import 'package:rest_json1/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i22;
import 'package:rest_json1/src/rest_json_protocol/model/http_payload_traits_input_output.dart'
    as _i26;
import 'package:rest_json1/src/rest_json_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i28;
import 'package:rest_json1/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart'
    as _i30;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_input.dart'
    as _i36;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_in_response_output.dart'
    as _i35;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i33;
import 'package:rest_json1/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i32;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_float_labels_input.dart'
    as _i38;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i40;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i44;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_labels_input.dart'
    as _i42;
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart'
    as _i46;
import 'package:rest_json1/src/rest_json_protocol/model/http_response_code_output.dart'
    as _i48;
import 'package:rest_json1/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart'
    as _i52;
import 'package:rest_json1/src/rest_json_protocol/model/input_and_output_with_headers_io.dart'
    as _i54;
import 'package:rest_json1/src/rest_json_protocol/model/json_blobs_input_output.dart'
    as _i56;
import 'package:rest_json1/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i58;
import 'package:rest_json1/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i60;
import 'package:rest_json1/src/rest_json_protocol/model/json_maps_input_output.dart'
    as _i62;
import 'package:rest_json1/src/rest_json_protocol/model/json_timestamps_input_output.dart'
    as _i64;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_accept_with_generic_string_input.dart'
    as _i70;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_accept_with_payload_output.dart'
    as _i72;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_blob_input.dart'
    as _i74;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_boolean_input.dart'
    as _i76;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_byte_input.dart'
    as _i78;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_content_type_with_generic_string_input.dart'
    as _i81;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_content_type_with_payload_input.dart'
    as _i83;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_double_input.dart'
    as _i86;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_float_input.dart'
    as _i88;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_integer_input.dart'
    as _i90;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_list_input.dart'
    as _i92;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_long_input.dart'
    as _i94;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_map_input.dart'
    as _i96;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_request_body_input.dart'
    as _i98;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_set_input.dart'
    as _i100;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_short_input.dart'
    as _i102;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_string_input.dart'
    as _i104;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_body_date_time_input.dart'
    as _i106;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_body_default_input.dart'
    as _i108;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_body_http_date_input.dart'
    as _i110;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_header_date_time_input.dart'
    as _i112;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_header_default_input.dart'
    as _i114;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_header_epoch_input.dart'
    as _i116;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_path_default_input.dart'
    as _i118;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_path_epoch_input.dart'
    as _i120;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_path_http_date_input.dart'
    as _i122;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_query_default_input.dart'
    as _i124;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_query_epoch_input.dart'
    as _i126;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_timestamp_query_http_date_input.dart'
    as _i128;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_union_input.dart'
    as _i130;
import 'package:rest_json1/src/rest_json_protocol/model/media_type_header_input.dart'
    as _i133;
import 'package:rest_json1/src/rest_json_protocol/model/media_type_header_output.dart'
    as _i132;
import 'package:rest_json1/src/rest_json_protocol/model/no_input_and_output_output.dart'
    as _i136;
import 'package:rest_json1/src/rest_json_protocol/model/null_and_empty_headers_io.dart'
    as _i138;
import 'package:rest_json1/src/rest_json_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i141;
import 'package:rest_json1/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i144;
import 'package:rest_json1/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i143;
import 'package:rest_json1/src/rest_json_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i146;
import 'package:rest_json1/src/rest_json_protocol/model/query_params_as_string_list_map_input.dart'
    as _i148;
import 'package:rest_json1/src/rest_json_protocol/model/query_precedence_input.dart'
    as _i150;
import 'package:rest_json1/src/rest_json_protocol/model/recursive_shapes_input_output.dart'
    as _i152;
import 'package:rest_json1/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i154;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_input_output.dart'
    as _i156;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_require_length_input_output.dart'
    as _i158;
import 'package:rest_json1/src/rest_json_protocol/model/streaming_traits_with_media_type_input_output.dart'
    as _i160;
import 'package:rest_json1/src/rest_json_protocol/model/string_payload_input.dart'
    as _i50;
import 'package:rest_json1/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i162;
import 'package:rest_json1/src/rest_json_protocol/model/test_no_payload_input_output.dart'
    as _i164;
import 'package:rest_json1/src/rest_json_protocol/model/test_payload_blob_input_output.dart'
    as _i166;
import 'package:rest_json1/src/rest_json_protocol/model/test_payload_structure_input_output.dart'
    as _i168;
import 'package:rest_json1/src/rest_json_protocol/model/timestamp_format_headers_io.dart'
    as _i170;
import 'package:rest_json1/src/rest_json_protocol/model/union_input_output.dart'
    as _i66;
import 'package:rest_json1/src/rest_json_protocol/operation/all_query_string_types.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_protocol/operation/constant_and_variable_query_string.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/constant_query_string.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_protocol/operation/document_type.dart'
    as _i9;
import 'package:rest_json1/src/rest_json_protocol/operation/document_type_as_payload.dart'
    as _i11;
import 'package:rest_json1/src/rest_json_protocol/operation/empty_input_and_empty_output.dart'
    as _i14;
import 'package:rest_json1/src/rest_json_protocol/operation/endpoint_operation.dart'
    as _i15;
import 'package:rest_json1/src/rest_json_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i18;
import 'package:rest_json1/src/rest_json_protocol/operation/greeting_with_errors.dart'
    as _i20;
import 'package:rest_json1/src/rest_json_protocol/operation/host_with_path_operation.dart'
    as _i21;
import 'package:rest_json1/src/rest_json_protocol/operation/http_checksum_required.dart'
    as _i23;
import 'package:rest_json1/src/rest_json_protocol/operation/http_enum_payload.dart'
    as _i25;
import 'package:rest_json1/src/rest_json_protocol/operation/http_payload_traits.dart'
    as _i27;
import 'package:rest_json1/src/rest_json_protocol/operation/http_payload_traits_with_media_type.dart'
    as _i29;
import 'package:rest_json1/src/rest_json_protocol/operation/http_payload_with_structure.dart'
    as _i31;
import 'package:rest_json1/src/rest_json_protocol/operation/http_prefix_headers.dart'
    as _i34;
import 'package:rest_json1/src/rest_json_protocol/operation/http_prefix_headers_in_response.dart'
    as _i37;
import 'package:rest_json1/src/rest_json_protocol/operation/http_request_with_float_labels.dart'
    as _i39;
import 'package:rest_json1/src/rest_json_protocol/operation/http_request_with_greedy_label_in_path.dart'
    as _i41;
import 'package:rest_json1/src/rest_json_protocol/operation/http_request_with_labels.dart'
    as _i43;
import 'package:rest_json1/src/rest_json_protocol/operation/http_request_with_labels_and_timestamp_format.dart'
    as _i45;
import 'package:rest_json1/src/rest_json_protocol/operation/http_request_with_regex_literal.dart'
    as _i47;
import 'package:rest_json1/src/rest_json_protocol/operation/http_response_code.dart'
    as _i49;
import 'package:rest_json1/src/rest_json_protocol/operation/http_string_payload.dart'
    as _i51;
import 'package:rest_json1/src/rest_json_protocol/operation/ignore_query_params_in_response.dart'
    as _i53;
import 'package:rest_json1/src/rest_json_protocol/operation/input_and_output_with_headers.dart'
    as _i55;
import 'package:rest_json1/src/rest_json_protocol/operation/json_blobs.dart'
    as _i57;
import 'package:rest_json1/src/rest_json_protocol/operation/json_enums.dart'
    as _i59;
import 'package:rest_json1/src/rest_json_protocol/operation/json_lists.dart'
    as _i61;
import 'package:rest_json1/src/rest_json_protocol/operation/json_maps.dart'
    as _i63;
import 'package:rest_json1/src/rest_json_protocol/operation/json_timestamps.dart'
    as _i65;
import 'package:rest_json1/src/rest_json_protocol/operation/json_unions.dart'
    as _i67;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_accept_with_body.dart'
    as _i69;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_accept_with_generic_string.dart'
    as _i71;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_accept_with_payload.dart'
    as _i73;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_blob.dart'
    as _i75;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_boolean.dart'
    as _i77;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_byte.dart'
    as _i79;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_content_type_with_body.dart'
    as _i80;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_content_type_with_generic_string.dart'
    as _i82;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_content_type_with_payload.dart'
    as _i84;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_content_type_without_body.dart'
    as _i85;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_double.dart'
    as _i87;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_float.dart'
    as _i89;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_integer.dart'
    as _i91;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_list.dart'
    as _i93;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_long.dart'
    as _i95;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_map.dart'
    as _i97;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_request_body.dart'
    as _i99;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_set.dart'
    as _i101;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_short.dart'
    as _i103;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_string.dart'
    as _i105;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_body_date_time.dart'
    as _i107;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_body_default.dart'
    as _i109;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_body_http_date.dart'
    as _i111;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_header_date_time.dart'
    as _i113;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_header_default.dart'
    as _i115;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_header_epoch.dart'
    as _i117;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_path_default.dart'
    as _i119;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_path_epoch.dart'
    as _i121;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_path_http_date.dart'
    as _i123;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_query_default.dart'
    as _i125;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_query_epoch.dart'
    as _i127;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_timestamp_query_http_date.dart'
    as _i129;
import 'package:rest_json1/src/rest_json_protocol/operation/malformed_union.dart'
    as _i131;
import 'package:rest_json1/src/rest_json_protocol/operation/media_type_header.dart'
    as _i134;
import 'package:rest_json1/src/rest_json_protocol/operation/no_input_and_no_output.dart'
    as _i135;
import 'package:rest_json1/src/rest_json_protocol/operation/no_input_and_output.dart'
    as _i137;
import 'package:rest_json1/src/rest_json_protocol/operation/null_and_empty_headers_client.dart'
    as _i139;
import 'package:rest_json1/src/rest_json_protocol/operation/null_and_empty_headers_server.dart'
    as _i140;
import 'package:rest_json1/src/rest_json_protocol/operation/omits_null_serializes_empty_string.dart'
    as _i142;
import 'package:rest_json1/src/rest_json_protocol/operation/post_player_action.dart'
    as _i145;
import 'package:rest_json1/src/rest_json_protocol/operation/query_idempotency_token_auto_fill.dart'
    as _i147;
import 'package:rest_json1/src/rest_json_protocol/operation/query_params_as_string_list_map.dart'
    as _i149;
import 'package:rest_json1/src/rest_json_protocol/operation/query_precedence.dart'
    as _i151;
import 'package:rest_json1/src/rest_json_protocol/operation/recursive_shapes.dart'
    as _i153;
import 'package:rest_json1/src/rest_json_protocol/operation/simple_scalar_properties.dart'
    as _i155;
import 'package:rest_json1/src/rest_json_protocol/operation/streaming_traits.dart'
    as _i157;
import 'package:rest_json1/src/rest_json_protocol/operation/streaming_traits_require_length.dart'
    as _i159;
import 'package:rest_json1/src/rest_json_protocol/operation/streaming_traits_with_media_type.dart'
    as _i161;
import 'package:rest_json1/src/rest_json_protocol/operation/test_body_structure.dart'
    as _i163;
import 'package:rest_json1/src/rest_json_protocol/operation/test_no_payload.dart'
    as _i165;
import 'package:rest_json1/src/rest_json_protocol/operation/test_payload_blob.dart'
    as _i167;
import 'package:rest_json1/src/rest_json_protocol/operation/test_payload_structure.dart'
    as _i169;
import 'package:rest_json1/src/rest_json_protocol/operation/timestamp_format_headers.dart'
    as _i171;
import 'package:rest_json1/src/rest_json_protocol/operation/unit_input_and_output.dart'
    as _i172;
import 'package:smithy/smithy.dart' as _i16;

class RestJsonProtocolClient {
  const RestJsonProtocolClient({required this.region});

  final String region;

  /// This example uses all query string types.
  _i1.Future<void> allQueryStringTypes(_i2.AllQueryStringTypesInput input) {
    return _i3.AllQueryStringTypesOperation(region: region).run(input);
  }

  /// This example uses fixed query string params and variable query string params. The fixed query string parameters and variable parameters must both be serialized (implementations may need to merge them together).
  _i1.Future<void> constantAndVariableQueryString(
      _i4.ConstantAndVariableQueryStringInput input) {
    return _i5.ConstantAndVariableQueryStringOperation(region: region)
        .run(input);
  }

  /// This example uses a constant query string parameters and a label. This simply tests that labels and query string parameters are compatible. The fixed query string parameter named "hello" should in no way conflict with the label, `{hello}`.
  _i1.Future<void> constantQueryString(_i6.ConstantQueryStringInput input) {
    return _i7.ConstantQueryStringOperation(region: region).run(input);
  }

  /// This example serializes a document as part of the payload.
  _i1.Future<_i8.DocumentTypeInputOutput> documentType(
      _i8.DocumentTypeInputOutput input) {
    return _i9.DocumentTypeOperation(region: region).run(input);
  }

  /// This example serializes a document as the entire HTTP payload.
  _i1.Future<_i10.DocumentTypeAsPayloadInputOutput> documentTypeAsPayload(
      _i10.DocumentTypeAsPayloadInputOutput input) {
    return _i11.DocumentTypeAsPayloadOperation(region: region).run(input);
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has an empty input and empty output structure that reuses the same shape. While this should be rare, code generators must support this.
  _i1.Future<_i12.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
      _i13.EmptyInputAndEmptyOutputInput input) {
    return _i14.EmptyInputAndEmptyOutputOperation(region: region).run(input);
  }

  _i1.Future<void> endpointOperation() {
    return _i15.EndpointOperation(region: region).run(const _i16.Unit());
  }

  _i1.Future<void> endpointWithHostLabelOperation(_i17.HostLabelInput input) {
    return _i18.EndpointWithHostLabelOperation(region: region).run(input);
  }

  /// This operation has four possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error. 4. A FooError. Implementations must be able to successfully take a response and properly (de)serialize successful and error responses based on the the presence of the
  _i1.Future<_i19.GreetingWithErrorsOutput> greetingWithErrors() {
    return _i20.GreetingWithErrorsOperation(region: region)
        .run(const _i16.Unit());
  }

  _i1.Future<void> hostWithPathOperation() {
    return _i21.HostWithPathOperation(region: region).run(const _i16.Unit());
  }

  /// This example tests httpChecksumRequired trait
  _i1.Future<_i22.HttpChecksumRequiredInputOutput> httpChecksumRequired(
      _i22.HttpChecksumRequiredInputOutput input) {
    return _i23.HttpChecksumRequiredOperation(region: region).run(input);
  }

  _i1.Future<_i24.EnumPayloadInput> httpEnumPayload(
      _i24.EnumPayloadInput input) {
    return _i25.HttpEnumPayloadOperation(region: region).run(input);
  }

  /// This examples serializes a blob shape in the payload. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  _i1.Future<_i26.HttpPayloadTraitsInputOutput> httpPayloadTraits(
      _i26.HttpPayloadTraitsInputOutput input) {
    return _i27.HttpPayloadTraitsOperation(region: region).run(input);
  }

  /// This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  _i1.Future<_i28.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
          _i28.HttpPayloadTraitsWithMediaTypeInputOutput input) {
    return _i29.HttpPayloadTraitsWithMediaTypeOperation(region: region)
        .run(input);
  }

  /// This examples serializes a structure in the payload. Note that serializing a structure changes the wrapper element name to match the targeted structure.
  _i1.Future<_i30.HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
      _i30.HttpPayloadWithStructureInputOutput input) {
    return _i31.HttpPayloadWithStructureOperation(region: region).run(input);
  }

  /// This examples adds headers to the input of a request and response by prefix.
  _i1.Future<_i32.HttpPrefixHeadersOutput> httpPrefixHeaders(
      _i33.HttpPrefixHeadersInput input) {
    return _i34.HttpPrefixHeadersOperation(region: region).run(input);
  }

  /// Clients that perform this test extract all headers from the response.
  _i1.Future<_i35.HttpPrefixHeadersInResponseOutput>
      httpPrefixHeadersInResponse(_i36.HttpPrefixHeadersInResponseInput input) {
    return _i37.HttpPrefixHeadersInResponseOperation(region: region).run(input);
  }

  _i1.Future<void> httpRequestWithFloatLabels(
      _i38.HttpRequestWithFloatLabelsInput input) {
    return _i39.HttpRequestWithFloatLabelsOperation(region: region).run(input);
  }

  _i1.Future<void> httpRequestWithGreedyLabelInPath(
      _i40.HttpRequestWithGreedyLabelInPathInput input) {
    return _i41.HttpRequestWithGreedyLabelInPathOperation(region: region)
        .run(input);
  }

  /// The example tests how requests are serialized when there's no input payload but there are HTTP labels.
  _i1.Future<void> httpRequestWithLabels(
      _i42.HttpRequestWithLabelsInput input) {
    return _i43.HttpRequestWithLabelsOperation(region: region).run(input);
  }

  /// The example tests how requests serialize different timestamp formats in the URI path.
  _i1.Future<void> httpRequestWithLabelsAndTimestampFormat(
      _i44.HttpRequestWithLabelsAndTimestampFormatInput input) {
    return _i45.HttpRequestWithLabelsAndTimestampFormatOperation(region: region)
        .run(input);
  }

  _i1.Future<void> httpRequestWithRegexLiteral(
      _i46.HttpRequestWithRegexLiteralInput input) {
    return _i47.HttpRequestWithRegexLiteralOperation(region: region).run(input);
  }

  _i1.Future<_i48.HttpResponseCodeOutput> httpResponseCode() {
    return _i49.HttpResponseCodeOperation(region: region)
        .run(const _i16.Unit());
  }

  _i1.Future<_i50.StringPayloadInput> httpStringPayload(
      _i50.StringPayloadInput input) {
    return _i51.HttpStringPayloadOperation(region: region).run(input);
  }

  /// This example ensures that query string bound request parameters are serialized in the body of responses if the structure is used in both the request and response.
  _i1.Future<_i52.IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponse() {
    return _i53.IgnoreQueryParamsInResponseOperation(region: region)
        .run(const _i16.Unit());
  }

  /// The example tests how requests and responses are serialized when there is no input or output payload but there are HTTP header bindings.
  _i1.Future<_i54.InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
      _i54.InputAndOutputWithHeadersIo input) {
    return _i55.InputAndOutputWithHeadersOperation(region: region).run(input);
  }

  /// Blobs are base64 encoded
  _i1.Future<_i56.JsonBlobsInputOutput> jsonBlobs(
      _i56.JsonBlobsInputOutput input) {
    return _i57.JsonBlobsOperation(region: region).run(input);
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i1.Future<_i58.JsonEnumsInputOutput> jsonEnums(
      _i58.JsonEnumsInputOutput input) {
    return _i59.JsonEnumsOperation(region: region).run(input);
  }

  /// This test case serializes JSON lists for the following cases for both input and output: 1. Normal JSON lists. 2. Normal JSON sets. 3. JSON lists of lists. 4. Lists of structures.
  _i1.Future<_i60.JsonListsInputOutput> jsonLists(
      _i60.JsonListsInputOutput input) {
    return _i61.JsonListsOperation(region: region).run(input);
  }

  /// The example tests basic map serialization.
  _i1.Future<_i62.JsonMapsInputOutput> jsonMaps(
      _i62.JsonMapsInputOutput input) {
    return _i63.JsonMapsOperation(region: region).run(input);
  }

  /// This tests how timestamps are serialized, including using the default format of date-time and various @timestampFormat trait values.
  _i1.Future<_i64.JsonTimestampsInputOutput> jsonTimestamps(
      _i64.JsonTimestampsInputOutput input) {
    return _i65.JsonTimestampsOperation(region: region).run(input);
  }

  /// This operation uses unions for inputs and outputs.
  _i1.Future<_i66.UnionInputOutput> jsonUnions(_i66.UnionInputOutput input) {
    return _i67.JsonUnionsOperation(region: region).run(input);
  }

  _i1.Future<_i68.GreetingStruct> malformedAcceptWithBody() {
    return _i69.MalformedAcceptWithBodyOperation(region: region)
        .run(const _i16.Unit());
  }

  _i1.Future<void> malformedAcceptWithGenericString(
      _i70.MalformedAcceptWithGenericStringInput input) {
    return _i71.MalformedAcceptWithGenericStringOperation(region: region)
        .run(input);
  }

  _i1.Future<_i72.MalformedAcceptWithPayloadOutput>
      malformedAcceptWithPayload() {
    return _i73.MalformedAcceptWithPayloadOperation(region: region)
        .run(const _i16.Unit());
  }

  _i1.Future<void> malformedBlob(_i74.MalformedBlobInput input) {
    return _i75.MalformedBlobOperation(region: region).run(input);
  }

  _i1.Future<void> malformedBoolean(_i76.MalformedBooleanInput input) {
    return _i77.MalformedBooleanOperation(region: region).run(input);
  }

  _i1.Future<void> malformedByte(_i78.MalformedByteInput input) {
    return _i79.MalformedByteOperation(region: region).run(input);
  }

  _i1.Future<void> malformedContentTypeWithBody(_i68.GreetingStruct input) {
    return _i80.MalformedContentTypeWithBodyOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedContentTypeWithGenericString(
      _i81.MalformedContentTypeWithGenericStringInput input) {
    return _i82.MalformedContentTypeWithGenericStringOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedContentTypeWithPayload(
      _i83.MalformedContentTypeWithPayloadInput input) {
    return _i84.MalformedContentTypeWithPayloadOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedContentTypeWithoutBody() {
    return _i85.MalformedContentTypeWithoutBodyOperation(region: region)
        .run(const _i16.Unit());
  }

  _i1.Future<void> malformedDouble(_i86.MalformedDoubleInput input) {
    return _i87.MalformedDoubleOperation(region: region).run(input);
  }

  _i1.Future<void> malformedFloat(_i88.MalformedFloatInput input) {
    return _i89.MalformedFloatOperation(region: region).run(input);
  }

  _i1.Future<void> malformedInteger(_i90.MalformedIntegerInput input) {
    return _i91.MalformedIntegerOperation(region: region).run(input);
  }

  _i1.Future<void> malformedList(_i92.MalformedListInput input) {
    return _i93.MalformedListOperation(region: region).run(input);
  }

  _i1.Future<void> malformedLong(_i94.MalformedLongInput input) {
    return _i95.MalformedLongOperation(region: region).run(input);
  }

  _i1.Future<void> malformedMap(_i96.MalformedMapInput input) {
    return _i97.MalformedMapOperation(region: region).run(input);
  }

  _i1.Future<void> malformedRequestBody(_i98.MalformedRequestBodyInput input) {
    return _i99.MalformedRequestBodyOperation(region: region).run(input);
  }

  _i1.Future<void> malformedSet(_i100.MalformedSetInput input) {
    return _i101.MalformedSetOperation(region: region).run(input);
  }

  _i1.Future<void> malformedShort(_i102.MalformedShortInput input) {
    return _i103.MalformedShortOperation(region: region).run(input);
  }

  _i1.Future<void> malformedString(_i104.MalformedStringInput input) {
    return _i105.MalformedStringOperation(region: region).run(input);
  }

  _i1.Future<void> malformedTimestampBodyDateTime(
      _i106.MalformedTimestampBodyDateTimeInput input) {
    return _i107.MalformedTimestampBodyDateTimeOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampBodyDefault(
      _i108.MalformedTimestampBodyDefaultInput input) {
    return _i109.MalformedTimestampBodyDefaultOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampBodyHttpDate(
      _i110.MalformedTimestampBodyHttpDateInput input) {
    return _i111.MalformedTimestampBodyHttpDateOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampHeaderDateTime(
      _i112.MalformedTimestampHeaderDateTimeInput input) {
    return _i113.MalformedTimestampHeaderDateTimeOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampHeaderDefault(
      _i114.MalformedTimestampHeaderDefaultInput input) {
    return _i115.MalformedTimestampHeaderDefaultOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampHeaderEpoch(
      _i116.MalformedTimestampHeaderEpochInput input) {
    return _i117.MalformedTimestampHeaderEpochOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampPathDefault(
      _i118.MalformedTimestampPathDefaultInput input) {
    return _i119.MalformedTimestampPathDefaultOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampPathEpoch(
      _i120.MalformedTimestampPathEpochInput input) {
    return _i121.MalformedTimestampPathEpochOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampPathHttpDate(
      _i122.MalformedTimestampPathHttpDateInput input) {
    return _i123.MalformedTimestampPathHttpDateOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampQueryDefault(
      _i124.MalformedTimestampQueryDefaultInput input) {
    return _i125.MalformedTimestampQueryDefaultOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampQueryEpoch(
      _i126.MalformedTimestampQueryEpochInput input) {
    return _i127.MalformedTimestampQueryEpochOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedTimestampQueryHttpDate(
      _i128.MalformedTimestampQueryHttpDateInput input) {
    return _i129.MalformedTimestampQueryHttpDateOperation(region: region)
        .run(input);
  }

  _i1.Future<void> malformedUnion(_i130.MalformedUnionInput input) {
    return _i131.MalformedUnionOperation(region: region).run(input);
  }

  /// This example ensures that mediaType strings are base64 encoded in headers.
  _i1.Future<_i132.MediaTypeHeaderOutput> mediaTypeHeader(
      _i133.MediaTypeHeaderInput input) {
    return _i134.MediaTypeHeaderOperation(region: region).run(input);
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
  _i1.Future<void> noInputAndNoOutput() {
    return _i135.NoInputAndNoOutputOperation(region: region)
        .run(const _i16.Unit());
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input and the output is empty. While this should be rare, code generators must support this.
  _i1.Future<_i136.NoInputAndOutputOutput> noInputAndOutput() {
    return _i137.NoInputAndOutputOperation(region: region)
        .run(const _i16.Unit());
  }

  /// Null and empty headers are not sent over the wire.
  _i1.Future<_i138.NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
      _i138.NullAndEmptyHeadersIo input) {
    return _i139.NullAndEmptyHeadersClientOperation(region: region).run(input);
  }

  /// Null and empty headers are not sent over the wire.
  _i1.Future<_i138.NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
      _i138.NullAndEmptyHeadersIo input) {
    return _i140.NullAndEmptyHeadersServerOperation(region: region).run(input);
  }

  /// Omits null, but serializes empty string value.
  _i1.Future<void> omitsNullSerializesEmptyString(
      _i141.OmitsNullSerializesEmptyStringInput input) {
    return _i142.OmitsNullSerializesEmptyStringOperation(region: region)
        .run(input);
  }

  /// This operation defines a union with a Unit member.
  _i1.Future<_i143.PostPlayerActionOutput> postPlayerAction(
      _i144.PostPlayerActionInput input) {
    return _i145.PostPlayerActionOperation(region: region).run(input);
  }

  /// Automatically adds idempotency tokens.
  _i1.Future<void> queryIdempotencyTokenAutoFill(
      _i146.QueryIdempotencyTokenAutoFillInput input) {
    return _i147.QueryIdempotencyTokenAutoFillOperation(region: region)
        .run(input);
  }

  _i1.Future<void> queryParamsAsStringListMap(
      _i148.QueryParamsAsStringListMapInput input) {
    return _i149.QueryParamsAsStringListMapOperation(region: region).run(input);
  }

  _i1.Future<void> queryPrecedence(_i150.QueryPrecedenceInput input) {
    return _i151.QueryPrecedenceOperation(region: region).run(input);
  }

  /// Recursive shapes
  _i1.Future<_i152.RecursiveShapesInputOutput> recursiveShapes(
      _i152.RecursiveShapesInputOutput input) {
    return _i153.RecursiveShapesOperation(region: region).run(input);
  }

  _i1.Future<_i154.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
      _i154.SimpleScalarPropertiesInputOutput input) {
    return _i155.SimpleScalarPropertiesOperation(region: region).run(input);
  }

  /// This examples serializes a streaming blob shape in the request body. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  _i1.Future<_i156.StreamingTraitsInputOutput> streamingTraits(
      _i156.StreamingTraitsInputOutput input) {
    return _i157.StreamingTraitsOperation(region: region).run(input);
  }

  /// This examples serializes a streaming blob shape with a required content length in the request body. In this example, no JSON document is synthesized because the payload is not a structure or a union type.
  _i1.Future<_i158.StreamingTraitsRequireLengthInputOutput>
      streamingTraitsRequireLength(
          _i158.StreamingTraitsRequireLengthInputOutput input) {
    return _i159.StreamingTraitsRequireLengthOperation(region: region)
        .run(input);
  }

  /// This examples serializes a streaming media-typed blob shape in the request body. This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  _i1.Future<_i160.StreamingTraitsWithMediaTypeInputOutput>
      streamingTraitsWithMediaType(
          _i160.StreamingTraitsWithMediaTypeInputOutput input) {
    return _i161.StreamingTraitsWithMediaTypeOperation(region: region)
        .run(input);
  }

  /// This example operation serializes a structure in the HTTP body. It should ensure Content-Type: application/json is used in all requests and that an "empty" body is an empty JSON document ({}).
  _i1.Future<_i162.TestBodyStructureInputOutput> testBodyStructure(
      _i162.TestBodyStructureInputOutput input) {
    return _i163.TestBodyStructureOperation(region: region).run(input);
  }

  /// This example operation serializes a request without an HTTP body. These tests are to ensure we do not attach a body or related headers (Content-Length, Content-Type) to operations that semantically cannot produce an HTTP body.
  _i1.Future<_i164.TestNoPayloadInputOutput> testNoPayload(
      _i164.TestNoPayloadInputOutput input) {
    return _i165.TestNoPayloadOperation(region: region).run(input);
  }

  /// This example operation serializes a payload targeting a blob. The Blob shape is not structured content and we cannot make assumptions about what data will be sent. This test ensures only a generic "Content-Type: application/octet-stream" header is used, and that we are not treating an empty body as an empty JSON document.
  _i1.Future<_i166.TestPayloadBlobInputOutput> testPayloadBlob(
      _i166.TestPayloadBlobInputOutput input) {
    return _i167.TestPayloadBlobOperation(region: region).run(input);
  }

  /// This example operation serializes a payload targeting a structure. This enforces the same requirements as TestBodyStructure but with the body specified by the @httpPayload trait.
  _i1.Future<_i168.TestPayloadStructureInputOutput> testPayloadStructure(
      _i168.TestPayloadStructureInputOutput input) {
    return _i169.TestPayloadStructureOperation(region: region).run(input);
  }

  /// This example tests how timestamp request and response headers are serialized.
  _i1.Future<_i170.TimestampFormatHeadersIo> timestampFormatHeaders(
      _i170.TimestampFormatHeadersIo input) {
    return _i171.TimestampFormatHeadersOperation(region: region).run(input);
  }

  /// This test is similar to NoInputAndNoOutput, but uses explicit Unit types.
  _i1.Future<void> unitInputAndOutput() {
    return _i172.UnitInputAndOutputOperation(region: region)
        .run(const _i16.Unit());
  }
}
