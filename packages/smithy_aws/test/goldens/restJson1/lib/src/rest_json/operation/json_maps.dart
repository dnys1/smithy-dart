// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_maps;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/json_maps_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// The example tests basic map serialization.
class JsonMapsOperation extends _i1.HttpOperation<
    _i2.JsonMapsInputOutputPayload,
    _i2.JsonMapsInputOutput,
    _i2.JsonMapsInputOutputPayload,
    _i2.JsonMapsInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.JsonMapsInputOutputPayload,
          _i2.JsonMapsInputOutput,
          _i2.JsonMapsInputOutputPayload,
          _i2.JsonMapsInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.JsonMapsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/JsonMaps';
        b.successCode = 200;
      });
  @override
  _i2.JsonMapsInputOutput buildOutput(_i2.JsonMapsInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonMapsInputOutput((b) {
        if (payload.denseBooleanMap != null) {
          b.denseBooleanMap.replace(payload.denseBooleanMap!);
        }
        if (payload.denseNumberMap != null) {
          b.denseNumberMap.replace(payload.denseNumberMap!);
        }
        if (payload.denseSetMap != null) {
          b.denseSetMap.replace(payload.denseSetMap!);
        }
        if (payload.denseStringMap != null) {
          b.denseStringMap.replace(payload.denseStringMap!);
        }
        if (payload.denseStructMap != null) {
          b.denseStructMap.replace(payload.denseStructMap!);
        }
        if (payload.sparseBooleanMap != null) {
          b.sparseBooleanMap.replace(payload.sparseBooleanMap!);
        }
        if (payload.sparseNumberMap != null) {
          b.sparseNumberMap.replace(payload.sparseNumberMap!);
        }
        if (payload.sparseSetMap != null) {
          b.sparseSetMap.replace(payload.sparseSetMap!);
        }
        if (payload.sparseStringMap != null) {
          b.sparseStringMap.replace(payload.sparseStringMap!);
        }
        if (payload.sparseStructMap != null) {
          b.sparseStructMap.replace(payload.sparseStructMap!);
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
