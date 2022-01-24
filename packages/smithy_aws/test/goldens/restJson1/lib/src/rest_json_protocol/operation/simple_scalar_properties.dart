// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.simple_scalar_properties;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class SimpleScalarPropertiesOperation extends _i1.HttpOperation<
    _i2.SimpleScalarPropertiesInputOutputPayload,
    _i2.SimpleScalarPropertiesInputOutput,
    _i2.SimpleScalarPropertiesInputOutputPayload,
    _i2.SimpleScalarPropertiesInputOutput> {
  SimpleScalarPropertiesOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.SimpleScalarPropertiesInputOutputPayload,
          _i2.SimpleScalarPropertiesInputOutput,
          _i2.SimpleScalarPropertiesInputOutputPayload,
          _i2.SimpleScalarPropertiesInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          _i3.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.SimpleScalarPropertiesInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/SimpleScalarProperties';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
      });
  @override
  int successCode([_i2.SimpleScalarPropertiesInputOutput? output]) => 200;
  @override
  _i2.SimpleScalarPropertiesInputOutput buildOutput(
          _i2.SimpleScalarPropertiesInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.SimpleScalarPropertiesInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
