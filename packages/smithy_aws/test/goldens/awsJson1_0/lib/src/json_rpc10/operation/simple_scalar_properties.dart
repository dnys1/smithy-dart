// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.simple_scalar_properties;

import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_output.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class SimpleScalarPropertiesOperation extends _i1.HttpOperation<
    _i2.SimpleScalarPropertiesInputPayload,
    _i2.SimpleScalarPropertiesInput,
    _i3.SimpleScalarPropertiesOutputPayload,
    _i3.SimpleScalarPropertiesOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.SimpleScalarPropertiesInputPayload,
          _i2.SimpleScalarPropertiesInput,
          _i3.SimpleScalarPropertiesOutputPayload,
          _i3.SimpleScalarPropertiesOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.SimpleScalarProperties')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.SimpleScalarPropertiesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i3.SimpleScalarPropertiesOutput buildOutput(
          _i3.SimpleScalarPropertiesOutputPayload payload,
          _i1.HttpResponse response) =>
      _i3.SimpleScalarPropertiesOutput((b) {
        b.doubleValue = payload.doubleValue;
        b.floatValue = payload.floatValue;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
