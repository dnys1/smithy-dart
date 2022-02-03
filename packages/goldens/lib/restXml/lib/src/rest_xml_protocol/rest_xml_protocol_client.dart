// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.rest_xml_protocol_client;

import 'dart:async' as _i1;

import 'package:rest_xml/src/rest_xml_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:rest_xml/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart'
    as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart'
    as _i6;
import 'package:rest_xml/src/rest_xml_protocol/model/constant_query_string_input.dart'
    as _i8;
import 'package:rest_xml/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart'
    as _i11;
import 'package:rest_xml/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart'
    as _i10;
import 'package:rest_xml/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart'
    as _i19;
import 'package:rest_xml/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart'
    as _i21;
import 'package:rest_xml/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i23;
import 'package:rest_xml/src/rest_xml_protocol/model/greeting_with_errors_output.dart'
    as _i25;
import 'package:rest_xml/src/rest_xml_protocol/model/host_label_header_input.dart'
    as _i15;
import 'package:rest_xml/src/rest_xml_protocol/model/host_label_input.dart'
    as _i17;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_traits_input_output.dart'
    as _i27;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart'
    as _i29;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart'
    as _i31;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart'
    as _i33;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart'
    as _i35;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart'
    as _i39;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart'
    as _i37;
import 'package:rest_xml/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart'
    as _i41;
import 'package:rest_xml/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart'
    as _i43;
import 'package:rest_xml/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i45;
import 'package:rest_xml/src/rest_xml_protocol/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i49;
import 'package:rest_xml/src/rest_xml_protocol/model/http_request_with_labels_input.dart'
    as _i47;
import 'package:rest_xml/src/rest_xml_protocol/model/http_response_code_output.dart'
    as _i51;
import 'package:rest_xml/src/rest_xml_protocol/model/ignore_query_params_in_response_output.dart'
    as _i53;
import 'package:rest_xml/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart'
    as _i55;
import 'package:rest_xml/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart'
    as _i57;
import 'package:rest_xml/src/rest_xml_protocol/model/no_input_and_output_output.dart'
    as _i60;
import 'package:rest_xml/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i62;
import 'package:rest_xml/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart'
    as _i65;
import 'package:rest_xml/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i67;
import 'package:rest_xml/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart'
    as _i69;
import 'package:rest_xml/src/rest_xml_protocol/model/query_precedence_input.dart'
    as _i71;
import 'package:rest_xml/src/rest_xml_protocol/model/recursive_shapes_input_output.dart'
    as _i73;
import 'package:rest_xml/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart'
    as _i75;
import 'package:rest_xml/src/rest_xml_protocol/model/timestamp_format_headers_io.dart'
    as _i77;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i79;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart'
    as _i81;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_blobs_input_output.dart'
    as _i83;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart'
    as _i90;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_enums_input_output.dart'
    as _i92;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_lists_input_output.dart'
    as _i86;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_maps_input_output.dart'
    as _i88;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_maps_xml_name_input_output.dart'
    as _i96;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_namespaces_input_output.dart'
    as _i98;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_timestamps_input_output.dart'
    as _i100;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_unions_input_output.dart'
    as _i102;
import 'package:rest_xml/src/rest_xml_protocol/operation/all_query_string_types.dart'
    as _i3;
import 'package:rest_xml/src/rest_xml_protocol/operation/body_with_xml_name.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/operation/constant_and_variable_query_string.dart'
    as _i7;
import 'package:rest_xml/src/rest_xml_protocol/operation/constant_query_string.dart'
    as _i9;
import 'package:rest_xml/src/rest_xml_protocol/operation/empty_input_and_empty_output.dart'
    as _i12;
import 'package:rest_xml/src/rest_xml_protocol/operation/endpoint_operation.dart'
    as _i13;
import 'package:rest_xml/src/rest_xml_protocol/operation/endpoint_with_host_label_header_operation.dart'
    as _i16;
import 'package:rest_xml/src/rest_xml_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i18;
import 'package:rest_xml/src/rest_xml_protocol/operation/flattened_xml_map.dart'
    as _i20;
import 'package:rest_xml/src/rest_xml_protocol/operation/flattened_xml_map_with_xml_name.dart'
    as _i22;
import 'package:rest_xml/src/rest_xml_protocol/operation/flattened_xml_map_with_xml_namespace.dart'
    as _i24;
import 'package:rest_xml/src/rest_xml_protocol/operation/greeting_with_errors.dart'
    as _i26;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_traits.dart'
    as _i28;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_traits_with_media_type.dart'
    as _i30;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_with_member_xml_name.dart'
    as _i32;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_with_structure.dart'
    as _i34;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_with_xml_name.dart'
    as _i36;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_with_xml_namespace.dart'
    as _i38;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_payload_with_xml_namespace_and_prefix.dart'
    as _i40;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_prefix_headers.dart'
    as _i42;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_request_with_float_labels.dart'
    as _i44;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_request_with_greedy_label_in_path.dart'
    as _i46;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_request_with_labels.dart'
    as _i48;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_request_with_labels_and_timestamp_format.dart'
    as _i50;
import 'package:rest_xml/src/rest_xml_protocol/operation/http_response_code.dart'
    as _i52;
import 'package:rest_xml/src/rest_xml_protocol/operation/ignore_query_params_in_response.dart'
    as _i54;
import 'package:rest_xml/src/rest_xml_protocol/operation/input_and_output_with_headers.dart'
    as _i56;
import 'package:rest_xml/src/rest_xml_protocol/operation/nested_xml_maps.dart'
    as _i58;
import 'package:rest_xml/src/rest_xml_protocol/operation/no_input_and_no_output.dart'
    as _i59;
import 'package:rest_xml/src/rest_xml_protocol/operation/no_input_and_output.dart'
    as _i61;
import 'package:rest_xml/src/rest_xml_protocol/operation/null_and_empty_headers_client.dart'
    as _i63;
import 'package:rest_xml/src/rest_xml_protocol/operation/null_and_empty_headers_server.dart'
    as _i64;
import 'package:rest_xml/src/rest_xml_protocol/operation/omits_null_serializes_empty_string.dart'
    as _i66;
import 'package:rest_xml/src/rest_xml_protocol/operation/query_idempotency_token_auto_fill.dart'
    as _i68;
import 'package:rest_xml/src/rest_xml_protocol/operation/query_params_as_string_list_map.dart'
    as _i70;
import 'package:rest_xml/src/rest_xml_protocol/operation/query_precedence.dart'
    as _i72;
import 'package:rest_xml/src/rest_xml_protocol/operation/recursive_shapes.dart'
    as _i74;
import 'package:rest_xml/src/rest_xml_protocol/operation/simple_scalar_properties.dart'
    as _i76;
import 'package:rest_xml/src/rest_xml_protocol/operation/timestamp_format_headers.dart'
    as _i78;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_attributes.dart'
    as _i80;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_attributes_on_payload.dart'
    as _i82;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_blobs.dart'
    as _i84;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_empty_blobs.dart'
    as _i85;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_empty_lists.dart'
    as _i87;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_empty_maps.dart'
    as _i89;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_empty_strings.dart'
    as _i91;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_enums.dart'
    as _i93;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_lists.dart'
    as _i94;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_maps.dart' as _i95;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_maps_xml_name.dart'
    as _i97;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_namespaces.dart'
    as _i99;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_timestamps.dart'
    as _i101;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_unions.dart'
    as _i103;
import 'package:smithy/smithy.dart' as _i14;

/// A REST XML service that sends XML requests and responses.
class RestXmlProtocolClient {
  /// A REST XML service that sends XML requests and responses.
  const RestXmlProtocolClient({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  /// This example uses all query string types.
  _i1.Future<void> allQueryStringTypes(_i2.AllQueryStringTypesInput input) {
    return _i3.AllQueryStringTypesOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The following example serializes a body that uses an XML name,
  /// changing the wrapper name.
  _i1.Future<_i4.BodyWithXmlNameInputOutput> bodyWithXmlName(
      _i4.BodyWithXmlNameInputOutput input) {
    return _i5.BodyWithXmlNameOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This example uses fixed query string params and variable query string params.
  /// The fixed query string parameters and variable parameters must both be
  /// serialized (implementations may need to merge them together).
  _i1.Future<void> constantAndVariableQueryString(
      _i6.ConstantAndVariableQueryStringInput input) {
    return _i7.ConstantAndVariableQueryStringOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This example uses a constant query string parameters and a label.
  /// This simply tests that labels and query string parameters are
  /// compatible. The fixed query string parameter named "hello" should
  /// in no way conflict with the label, `{hello}`.
  _i1.Future<void> constantQueryString(_i8.ConstantQueryStringInput input) {
    return _i9.ConstantQueryStringOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has an empty input
  /// and empty output structure that reuses the same shape. While this should
  /// be rare, code generators must support this.
  _i1.Future<_i10.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
      _i11.EmptyInputAndEmptyOutputInput input) {
    return _i12.EmptyInputAndEmptyOutputOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> endpointOperation() {
    return _i13.EndpointOperation(region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  _i1.Future<void> endpointWithHostLabelHeaderOperation(
      _i15.HostLabelHeaderInput input) {
    return _i16.EndpointWithHostLabelHeaderOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> endpointWithHostLabelOperation(_i17.HostLabelInput input) {
    return _i18.EndpointWithHostLabelOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Flattened maps
  _i1.Future<_i19.FlattenedXmlMapInputOutput> flattenedXmlMap(
      _i19.FlattenedXmlMapInputOutput input) {
    return _i20.FlattenedXmlMapOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Flattened maps with @xmlName
  _i1.Future<_i21.FlattenedXmlMapWithXmlNameInputOutput>
      flattenedXmlMapWithXmlName(
          _i21.FlattenedXmlMapWithXmlNameInputOutput input) {
    return _i22.FlattenedXmlMapWithXmlNameOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Flattened maps with @xmlNamespace and @xmlName
  _i1.Future<_i23.FlattenedXmlMapWithXmlNamespaceOutput>
      flattenedXmlMapWithXmlNamespace() {
    return _i24.FlattenedXmlMapWithXmlNamespaceOperation(
            region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  /// This operation has three possible return values:
  ///
  /// 1. A successful response in the form of GreetingWithErrorsOutput
  /// 2. An InvalidGreeting error.
  /// 3. A BadRequest error.
  ///
  /// Implementations must be able to successfully take a response and
  /// properly (de)serialize successful and error responses based on the
  /// the presence of the
  _i1.Future<_i25.GreetingWithErrorsOutput> greetingWithErrors() {
    return _i26.GreetingWithErrorsOperation(region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  /// This examples serializes a blob shape in the payload.
  ///
  /// In this example, no XML document is synthesized because the payload is
  /// not a structure or a union type.
  _i1.Future<_i27.HttpPayloadTraitsInputOutput> httpPayloadTraits(
      _i27.HttpPayloadTraitsInputOutput input) {
    return _i28.HttpPayloadTraitsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This examples uses a `@mediaType` trait on the payload to force a custom
  /// content-type to be serialized.
  _i1.Future<_i29.HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
          _i29.HttpPayloadTraitsWithMediaTypeInputOutput input) {
    return _i30.HttpPayloadTraitsWithMediaTypeOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The following example serializes a payload that uses an XML name
  /// on the member, changing the wrapper name.
  _i1.Future<_i31.HttpPayloadWithMemberXmlNameInputOutput>
      httpPayloadWithMemberXmlName(
          _i31.HttpPayloadWithMemberXmlNameInputOutput input) {
    return _i32.HttpPayloadWithMemberXmlNameOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This examples serializes a structure in the payload.
  ///
  /// Note that serializing a structure changes the wrapper element name
  /// to match the targeted structure.
  _i1.Future<_i33.HttpPayloadWithStructureInputOutput> httpPayloadWithStructure(
      _i33.HttpPayloadWithStructureInputOutput input) {
    return _i34.HttpPayloadWithStructureOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The following example serializes a payload that uses an XML name,
  /// changing the wrapper name.
  _i1.Future<_i35.HttpPayloadWithXmlNameInputOutput> httpPayloadWithXmlName(
      _i35.HttpPayloadWithXmlNameInputOutput input) {
    return _i36.HttpPayloadWithXmlNameOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The following example serializes a payload that uses an XML namespace.
  _i1.Future<_i37.HttpPayloadWithXmlNamespaceInputOutput>
      httpPayloadWithXmlNamespace(
          _i37.HttpPayloadWithXmlNamespaceInputOutput input) {
    return _i38.HttpPayloadWithXmlNamespaceOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The following example serializes a payload that uses an XML namespace.
  _i1.Future<_i39.HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      httpPayloadWithXmlNamespaceAndPrefix(
          _i39.HttpPayloadWithXmlNamespaceAndPrefixInputOutput input) {
    return _i40.HttpPayloadWithXmlNamespaceAndPrefixOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This examples adds headers to the input of a request and response by prefix.///
  /// See also:
  /// - [httpPrefixHeaders Trait](https://awslabs.github.io/smithy/1.0/spec/http.html#httpprefixheaders-trait)

  _i1.Future<_i41.HttpPrefixHeadersInputOutput> httpPrefixHeaders(
      _i41.HttpPrefixHeadersInputOutput input) {
    return _i42.HttpPrefixHeadersOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> httpRequestWithFloatLabels(
      _i43.HttpRequestWithFloatLabelsInput input) {
    return _i44.HttpRequestWithFloatLabelsOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> httpRequestWithGreedyLabelInPath(
      _i45.HttpRequestWithGreedyLabelInPathInput input) {
    return _i46.HttpRequestWithGreedyLabelInPathOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The example tests how requests are serialized when there's no input
  /// payload but there are HTTP labels.
  _i1.Future<void> httpRequestWithLabels(
      _i47.HttpRequestWithLabelsInput input) {
    return _i48.HttpRequestWithLabelsOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The example tests how requests serialize different timestamp formats in the
  /// URI path.
  _i1.Future<void> httpRequestWithLabelsAndTimestampFormat(
      _i49.HttpRequestWithLabelsAndTimestampFormatInput input) {
    return _i50.HttpRequestWithLabelsAndTimestampFormatOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i51.HttpResponseCodeOutput> httpResponseCode() {
    return _i52.HttpResponseCodeOperation(region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  /// This example ensures that query string bound request parameters are
  /// serialized in the body of responses if the structure is used in both
  /// the request and response.
  _i1.Future<_i53.IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponse() {
    return _i54.IgnoreQueryParamsInResponseOperation(
            region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  /// The example tests how requests and responses are serialized when there is
  /// no input or output payload but there are HTTP header bindings.
  _i1.Future<_i55.InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
      _i55.InputAndOutputWithHeadersIo input) {
    return _i56.InputAndOutputWithHeadersOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i57.NestedXmlMapsInputOutput> nestedXmlMaps(
      _i57.NestedXmlMapsInputOutput input) {
    return _i58.NestedXmlMapsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has no input or output.
  /// While this should be rare, code generators must support this.
  _i1.Future<void> noInputAndNoOutput() {
    return _i59.NoInputAndNoOutputOperation(region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has no input and the
  /// output is empty. While this should be rare, code generators must support
  /// this.
  _i1.Future<_i60.NoInputAndOutputOutput> noInputAndOutput() {
    return _i61.NoInputAndOutputOperation(region: region, baseUri: _baseUri)
        .run(const _i14.Unit());
  }

  /// Null and empty headers are not sent over the wire.
  _i1.Future<_i62.NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
      _i62.NullAndEmptyHeadersIo input) {
    return _i63.NullAndEmptyHeadersClientOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Null and empty headers are not sent over the wire.
  _i1.Future<_i62.NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
      _i62.NullAndEmptyHeadersIo input) {
    return _i64.NullAndEmptyHeadersServerOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Omits null, but serializes empty string value.
  _i1.Future<void> omitsNullSerializesEmptyString(
      _i65.OmitsNullSerializesEmptyStringInput input) {
    return _i66.OmitsNullSerializesEmptyStringOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Automatically adds idempotency tokens.
  _i1.Future<void> queryIdempotencyTokenAutoFill(
      _i67.QueryIdempotencyTokenAutoFillInput input) {
    return _i68.QueryIdempotencyTokenAutoFillOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> queryParamsAsStringListMap(
      _i69.QueryParamsAsStringListMapInput input) {
    return _i70.QueryParamsAsStringListMapOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> queryPrecedence(_i71.QueryPrecedenceInput input) {
    return _i72.QueryPrecedenceOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Recursive shapes
  _i1.Future<_i73.RecursiveShapesInputOutput> recursiveShapes(
      _i73.RecursiveShapesInputOutput input) {
    return _i74.RecursiveShapesOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i75.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
      _i75.SimpleScalarPropertiesInputOutput input) {
    return _i76.SimpleScalarPropertiesOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// The example tests how timestamp request and response headers are serialized.
  _i1.Future<_i77.TimestampFormatHeadersIo> timestampFormatHeaders(
      _i77.TimestampFormatHeadersIo input) {
    return _i78.TimestampFormatHeadersOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This example serializes an XML attributes on synthesized document.
  _i1.Future<_i79.XmlAttributesInputOutput> xmlAttributes(
      _i79.XmlAttributesInputOutput input) {
    return _i80.XmlAttributesOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This example serializes an XML attributes on a document targeted by httpPayload.
  _i1.Future<_i81.XmlAttributesOnPayloadInputOutput> xmlAttributesOnPayload(
      _i81.XmlAttributesOnPayloadInputOutput input) {
    return _i82.XmlAttributesOnPayloadOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  /// Blobs are base64 encoded
  _i1.Future<_i83.XmlBlobsInputOutput> xmlBlobs(
      _i83.XmlBlobsInputOutput input) {
    return _i84.XmlBlobsOperation(region: region, baseUri: _baseUri).run(input);
  }

  /// Blobs are base64 encoded
  _i1.Future<_i83.XmlBlobsInputOutput> xmlEmptyBlobs(
      _i83.XmlBlobsInputOutput input) {
    return _i85.XmlEmptyBlobsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i86.XmlListsInputOutput> xmlEmptyLists(
      _i86.XmlListsInputOutput input) {
    return _i87.XmlEmptyListsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i88.XmlMapsInputOutput> xmlEmptyMaps(
      _i88.XmlMapsInputOutput input) {
    return _i89.XmlEmptyMapsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i90.XmlEmptyStringsInputOutput> xmlEmptyStrings(
      _i90.XmlEmptyStringsInputOutput input) {
    return _i91.XmlEmptyStringsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i1.Future<_i92.XmlEnumsInputOutput> xmlEnums(
      _i92.XmlEnumsInputOutput input) {
    return _i93.XmlEnumsOperation(region: region, baseUri: _baseUri).run(input);
  }

  /// This test case serializes XML lists for the following cases for both
  /// input and output:
  ///
  /// 1. Normal XML lists.
  /// 2. Normal XML sets.
  /// 3. XML lists of lists.
  /// 4. XML lists with @xmlName on its members
  /// 5. Flattened XML lists.
  /// 6. Flattened XML lists with @xmlName.
  /// 7. Flattened XML lists with @xmlNamespace.
  /// 8. Lists of structures.
  /// 9. Flattened XML list of structures
  _i1.Future<_i86.XmlListsInputOutput> xmlLists(
      _i86.XmlListsInputOutput input) {
    return _i94.XmlListsOperation(region: region, baseUri: _baseUri).run(input);
  }

  /// The example tests basic map serialization.
  _i1.Future<_i88.XmlMapsInputOutput> xmlMaps(_i88.XmlMapsInputOutput input) {
    return _i95.XmlMapsOperation(region: region, baseUri: _baseUri).run(input);
  }

  _i1.Future<_i96.XmlMapsXmlNameInputOutput> xmlMapsXmlName(
      _i96.XmlMapsXmlNameInputOutput input) {
    return _i97.XmlMapsXmlNameOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i98.XmlNamespacesInputOutput> xmlNamespaces(
      _i98.XmlNamespacesInputOutput input) {
    return _i99.XmlNamespacesOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  /// This tests how timestamps are serialized, including using the
  /// default format of date-time and various @timestampFormat trait
  /// values.
  _i1.Future<_i100.XmlTimestampsInputOutput> xmlTimestamps(
      _i100.XmlTimestampsInputOutput input) {
    return _i101.XmlTimestampsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<_i102.XmlUnionsInputOutput> xmlUnions(
      _i102.XmlUnionsInputOutput input) {
    return _i103.XmlUnionsOperation(region: region, baseUri: _baseUri)
        .run(input);
  }
}
