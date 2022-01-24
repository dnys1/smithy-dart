// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_maps;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/json_maps_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// The example tests basic map serialization.
class JsonMapsOperation extends _i1.HttpOperation<_i2.JsonMapsInputOutput,
    _i2.JsonMapsInputOutput, _i2.JsonMapsInputOutput, _i2.JsonMapsInputOutput> {
  JsonMapsOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonMapsInputOutput, _i2.JsonMapsInputOutput,
          _i2.JsonMapsInputOutput, _i2.JsonMapsInputOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.JsonMapsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/JsonMaps';
      });
  @override
  int successCode([_i2.JsonMapsInputOutput? output]) => 200;
  @override
  _i2.JsonMapsInputOutput buildOutput(_i2.JsonMapsInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonMapsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
