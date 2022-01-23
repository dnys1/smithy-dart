// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.json_protocol_client;

import 'dart:async' as _i1;

import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i7;
import 'package:aws_json1_1/src/json_protocol/model/host_label_input.dart'
    as _i5;
import 'package:aws_json1_1/src/json_protocol/model/json_enums_input_output.dart'
    as _i10;
import 'package:aws_json1_1/src/json_protocol/model/kitchen_sink.dart' as _i14;
import 'package:aws_json1_1/src/json_protocol/model/null_operation_input_output.dart'
    as _i16;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i19;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i18;
import 'package:aws_json1_1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i21;
import 'package:aws_json1_1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i23;
import 'package:aws_json1_1/src/json_protocol/model/union_input_output.dart'
    as _i12;
import 'package:aws_json1_1/src/json_protocol/operation/empty_operation.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/operation/endpoint_operation.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/operation/greeting_with_errors.dart'
    as _i8;
import 'package:aws_json1_1/src/json_protocol/operation/host_with_path_operation.dart'
    as _i9;
import 'package:aws_json1_1/src/json_protocol/operation/json_enums.dart'
    as _i11;
import 'package:aws_json1_1/src/json_protocol/operation/json_unions.dart'
    as _i13;
import 'package:aws_json1_1/src/json_protocol/operation/kitchen_sink_operation.dart'
    as _i15;
import 'package:aws_json1_1/src/json_protocol/operation/null_operation.dart'
    as _i17;
import 'package:aws_json1_1/src/json_protocol/operation/operation_with_optional_input_output.dart'
    as _i20;
import 'package:aws_json1_1/src/json_protocol/operation/put_and_get_inline_documents.dart'
    as _i22;
import 'package:aws_json1_1/src/json_protocol/operation/simple_scalar_properties.dart'
    as _i24;
import 'package:smithy/smithy.dart' as _i3;

class JsonProtocolClient {
  JsonProtocolClient();

  _i1.Future<void> emptyOperation() {
    return _i2.EmptyOperation().run(const _i3.Unit());
  }

  _i1.Future<void> endpointOperation() {
    return _i4.EndpointOperation().run(const _i3.Unit());
  }

  _i1.Future<void> endpointWithHostLabelOperation(_i5.HostLabelInput input) {
    return _i6.EndpointWithHostLabelOperation().run(input);
  }

  /// This operation has three possible return values:
  ///
  /// 1. A successful response in the form of GreetingWithErrorsOutput
  /// 2. An InvalidGreeting error.
  /// 3. A ComplexError error.
  ///
  /// Implementations must be able to successfully take a response and
  /// properly deserialize successful and error responses.
  _i1.Future<_i7.GreetingWithErrorsOutput> greetingWithErrors() {
    return _i8.GreetingWithErrorsOperation().run(const _i3.Unit());
  }

  _i1.Future<void> hostWithPathOperation() {
    return _i9.HostWithPathOperation().run(const _i3.Unit());
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i1.Future<_i10.JsonEnumsInputOutput> jsonEnums(
      _i10.JsonEnumsInputOutput input) {
    return _i11.JsonEnumsOperation().run(input);
  }

  /// This operation uses unions for inputs and outputs.
  _i1.Future<_i12.UnionInputOutput> jsonUnions(_i12.UnionInputOutput input) {
    return _i13.JsonUnionsOperation().run(input);
  }

  _i1.Future<_i14.KitchenSink> kitchenSinkOperation(_i14.KitchenSink input) {
    return _i15.KitchenSinkOperation().run(input);
  }

  _i1.Future<_i16.NullOperationInputOutput> nullOperation(
      _i16.NullOperationInputOutput input) {
    return _i17.NullOperation().run(input);
  }

  _i1.Future<_i18.OperationWithOptionalInputOutputOutput>
      operationWithOptionalInputOutput(
          _i19.OperationWithOptionalInputOutputInput input) {
    return _i20.OperationWithOptionalInputOutputOperation().run(input);
  }

  /// This example serializes an inline document as part of the payload.
  _i1.Future<_i21.PutAndGetInlineDocumentsInputOutput> putAndGetInlineDocuments(
      _i21.PutAndGetInlineDocumentsInputOutput input) {
    return _i22.PutAndGetInlineDocumentsOperation().run(input);
  }

  _i1.Future<_i23.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
      _i23.SimpleScalarPropertiesInputOutput input) {
    return _i24.SimpleScalarPropertiesOperation().run(input);
  }
}
