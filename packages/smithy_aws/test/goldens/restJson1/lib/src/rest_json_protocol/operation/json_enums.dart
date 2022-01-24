// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.json_enums;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example serializes enums as top level properties, in lists, sets, and maps.
class JsonEnumsOperation extends _i1.HttpOperation<
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput> {
  JsonEnumsOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonEnumsInputOutput, _i2.JsonEnumsInputOutput,
          _i2.JsonEnumsInputOutput, _i2.JsonEnumsInputOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.JsonEnumsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/JsonEnums';
      });
  @override
  int successCode([_i2.JsonEnumsInputOutput? output]) => 200;
  @override
  _i2.JsonEnumsInputOutput buildOutput(_i2.JsonEnumsInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonEnumsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
