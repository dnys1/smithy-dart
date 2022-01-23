// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.json_rpc10_client;

import 'dart:async' as _i1;

import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_input.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_output.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/endpoint_with_host_label_operation_input.dart'
    as _i7;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_input.dart'
    as _i10;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_output.dart'
    as _i9;
import 'package:aws_json1_0/src/json_rpc10/model/json_unions_input.dart'
    as _i14;
import 'package:aws_json1_0/src/json_rpc10/model/json_unions_output.dart'
    as _i13;
import 'package:aws_json1_0/src/json_rpc10/model/no_input_and_output_output.dart'
    as _i17;
import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_input.dart'
    as _i20;
import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_output.dart'
    as _i19;
import 'package:aws_json1_0/src/json_rpc10/operation/empty_input_and_empty_output.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/operation/endpoint_operation.dart'
    as _i5;
import 'package:aws_json1_0/src/json_rpc10/operation/endpoint_with_host_label_operation.dart'
    as _i8;
import 'package:aws_json1_0/src/json_rpc10/operation/greeting_with_errors.dart'
    as _i11;
import 'package:aws_json1_0/src/json_rpc10/operation/host_with_path_operation.dart'
    as _i12;
import 'package:aws_json1_0/src/json_rpc10/operation/json_unions.dart' as _i15;
import 'package:aws_json1_0/src/json_rpc10/operation/no_input_and_no_output.dart'
    as _i16;
import 'package:aws_json1_0/src/json_rpc10/operation/no_input_and_output.dart'
    as _i18;
import 'package:aws_json1_0/src/json_rpc10/operation/simple_scalar_properties.dart'
    as _i21;
import 'package:smithy/smithy.dart' as _i6;

class JsonRpc10Client {
  JsonRpc10Client();

  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has an empty input
  /// and empty output structure that reuses the same shape. While this should
  /// be rare, code generators must support this.
  _i1.Future<_i2.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
      _i3.EmptyInputAndEmptyOutputInput input) {
    return _i4.EmptyInputAndEmptyOutputOperation().run(input);
  }

  _i1.Future<void> endpointOperation() {
    return _i5.EndpointOperation().run(const _i6.Unit());
  }

  _i1.Future<void> endpointWithHostLabelOperation(
      _i7.EndpointWithHostLabelOperationInput input) {
    return _i8.EndpointWithHostLabelOperation().run(input);
  }

  /// This operation has three possible return values:
  ///
  /// 1. A successful response in the form of GreetingWithErrorsOutput
  /// 2. An InvalidGreeting error.
  /// 3. A ComplexError error.
  ///
  /// Implementations must be able to successfully take a response and
  /// properly deserialize successful and error responses.
  _i1.Future<_i9.GreetingWithErrorsOutput> greetingWithErrors(
      _i10.GreetingWithErrorsInput input) {
    return _i11.GreetingWithErrorsOperation().run(input);
  }

  _i1.Future<void> hostWithPathOperation() {
    return _i12.HostWithPathOperation().run(const _i6.Unit());
  }

  /// This operation uses unions for inputs and outputs.
  _i1.Future<_i13.JsonUnionsOutput> jsonUnions(_i14.JsonUnionsInput input) {
    return _i15.JsonUnionsOperation().run(input);
  }

  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has no input or output.
  /// While this should be rare, code generators must support this.
  _i1.Future<void> noInputAndNoOutput() {
    return _i16.NoInputAndNoOutputOperation().run(const _i6.Unit());
  }

  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has no input and the
  /// output is empty. While this should be rare, code generators must support
  /// this.
  _i1.Future<_i17.NoInputAndOutputOutput> noInputAndOutput() {
    return _i18.NoInputAndOutputOperation().run(const _i6.Unit());
  }

  _i1.Future<_i19.SimpleScalarPropertiesOutput> simpleScalarProperties(
      _i20.SimpleScalarPropertiesInput input) {
    return _i21.SimpleScalarPropertiesOperation().run(input);
  }
}
