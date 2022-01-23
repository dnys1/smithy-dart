// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation.rest_json_validation_client;

import 'dart:async' as _i1;

import 'package:rest_json1/src/rest_json_validation/model/malformed_enum_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation/model/malformed_length_input.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation/model/malformed_length_override_input.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_validation/model/malformed_length_query_string_input.dart'
    as _i8;
import 'package:rest_json1/src/rest_json_validation/model/malformed_pattern_input.dart'
    as _i10;
import 'package:rest_json1/src/rest_json_validation/model/malformed_pattern_override_input.dart'
    as _i12;
import 'package:rest_json1/src/rest_json_validation/model/malformed_range_input.dart'
    as _i14;
import 'package:rest_json1/src/rest_json_validation/model/malformed_range_override_input.dart'
    as _i16;
import 'package:rest_json1/src/rest_json_validation/model/malformed_required_input.dart'
    as _i18;
import 'package:rest_json1/src/rest_json_validation/model/recursive_structures_input.dart'
    as _i20;
import 'package:rest_json1/src/rest_json_validation/model/sensitive_validation_input.dart'
    as _i22;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_enum.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_length.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_length_override.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_length_query_string.dart'
    as _i9;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_pattern.dart'
    as _i11;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_pattern_override.dart'
    as _i13;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_range.dart'
    as _i15;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_range_override.dart'
    as _i17;
import 'package:rest_json1/src/rest_json_validation/operation/malformed_required.dart'
    as _i19;
import 'package:rest_json1/src/rest_json_validation/operation/recursive_structures.dart'
    as _i21;
import 'package:rest_json1/src/rest_json_validation/operation/sensitive_validation.dart'
    as _i23;

class RestJsonValidationClient {
  RestJsonValidationClient();

  _i1.Future<void> malformedEnum(_i2.MalformedEnumInput input) {
    return _i3.MalformedEnumOperation().run(input);
  }

  _i1.Future<void> malformedLength(_i4.MalformedLengthInput input) {
    return _i5.MalformedLengthOperation().run(input);
  }

  _i1.Future<void> malformedLengthOverride(
      _i6.MalformedLengthOverrideInput input) {
    return _i7.MalformedLengthOverrideOperation().run(input);
  }

  _i1.Future<void> malformedLengthQueryString(
      _i8.MalformedLengthQueryStringInput input) {
    return _i9.MalformedLengthQueryStringOperation().run(input);
  }

  _i1.Future<void> malformedPattern(_i10.MalformedPatternInput input) {
    return _i11.MalformedPatternOperation().run(input);
  }

  _i1.Future<void> malformedPatternOverride(
      _i12.MalformedPatternOverrideInput input) {
    return _i13.MalformedPatternOverrideOperation().run(input);
  }

  _i1.Future<void> malformedRange(_i14.MalformedRangeInput input) {
    return _i15.MalformedRangeOperation().run(input);
  }

  _i1.Future<void> malformedRangeOverride(
      _i16.MalformedRangeOverrideInput input) {
    return _i17.MalformedRangeOverrideOperation().run(input);
  }

  _i1.Future<void> malformedRequired(_i18.MalformedRequiredInput input) {
    return _i19.MalformedRequiredOperation().run(input);
  }

  _i1.Future<void> recursiveStructures(_i20.RecursiveStructuresInput input) {
    return _i21.RecursiveStructuresOperation().run(input);
  }

  _i1.Future<void> sensitiveValidation(_i22.SensitiveValidationInput input) {
    return _i23.SensitiveValidationOperation().run(input);
  }
}