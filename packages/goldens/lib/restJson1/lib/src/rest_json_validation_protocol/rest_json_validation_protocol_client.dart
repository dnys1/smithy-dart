// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.rest_json_validation_protocol_client;

import 'dart:async' as _i1;

import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_input.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_override_input.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i8;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_pattern_input.dart'
    as _i10;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart'
    as _i12;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_range_input.dart'
    as _i14;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i16;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_required_input.dart'
    as _i18;
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i20;
import 'package:rest_json1/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i22;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_enum_operation.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_length_operation.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_length_override_operation.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_length_query_string_operation.dart'
    as _i9;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_pattern_operation.dart'
    as _i11;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_pattern_override_operation.dart'
    as _i13;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_range_operation.dart'
    as _i15;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_range_override_operation.dart'
    as _i17;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/malformed_required_operation.dart'
    as _i19;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/recursive_structures_operation.dart'
    as _i21;
import 'package:rest_json1/src/rest_json_validation_protocol/operation/sensitive_validation_operation.dart'
    as _i23;

/// A REST JSON service that sends JSON requests and responses with validation applied
class RestJsonValidationProtocolClient {
  /// A REST JSON service that sends JSON requests and responses with validation applied
  const RestJsonValidationProtocolClient({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  _i1.Future<void> malformedEnum(_i2.MalformedEnumInput input) {
    return _i3.MalformedEnumOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedLength(_i4.MalformedLengthInput input) {
    return _i5.MalformedLengthOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedLengthOverride(
      _i6.MalformedLengthOverrideInput input) {
    return _i7.MalformedLengthOverrideOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedLengthQueryString(
      _i8.MalformedLengthQueryStringInput input) {
    return _i9.MalformedLengthQueryStringOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedPattern(_i10.MalformedPatternInput input) {
    return _i11.MalformedPatternOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedPatternOverride(
      _i12.MalformedPatternOverrideInput input) {
    return _i13.MalformedPatternOverrideOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedRange(_i14.MalformedRangeInput input) {
    return _i15.MalformedRangeOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedRangeOverride(
      _i16.MalformedRangeOverrideInput input) {
    return _i17.MalformedRangeOverrideOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> malformedRequired(_i18.MalformedRequiredInput input) {
    return _i19.MalformedRequiredOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> recursiveStructures(_i20.RecursiveStructuresInput input) {
    return _i21.RecursiveStructuresOperation(region: region, baseUri: _baseUri)
        .run(input);
  }

  _i1.Future<void> sensitiveValidation(_i22.SensitiveValidationInput input) {
    return _i23.SensitiveValidationOperation(region: region, baseUri: _baseUri)
        .run(input);
  }
}
