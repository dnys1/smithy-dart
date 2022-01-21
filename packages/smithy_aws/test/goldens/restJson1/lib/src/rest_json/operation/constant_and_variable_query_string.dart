// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.constant_and_variable_query_string;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/constant_and_variable_query_string_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example uses fixed query string params and variable query string params.
/// The fixed query string parameters and variable parameters must both be
/// serialized (implementations may need to merge them together).
class ConstantAndVariableQueryStringOperation extends _i1.HttpOperation<
    _i2.ConstantAndVariableQueryStringInputPayload,
    _i2.ConstantAndVariableQueryStringInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.ConstantAndVariableQueryStringInputPayload,
          _i2.ConstantAndVariableQueryStringInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.ConstantAndVariableQueryStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/ConstantAndVariableQueryString?foo=bar';
        b.successCode = 200;
        if (input.baz != null) {
          b.queryParameters.add('baz', input.baz!);
        }
        if (input.maybeSet != null) {
          b.queryParameters.add('maybeSet', input.maybeSet!);
        }
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
