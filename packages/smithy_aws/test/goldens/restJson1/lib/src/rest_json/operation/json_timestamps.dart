// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_timestamps;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/json_timestamps_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This tests how timestamps are serialized, including using the
/// default format of date-time and various @timestampFormat trait
/// values.
class JsonTimestampsOperation extends _i1.HttpOperation<
    _i2.JsonTimestampsInputOutputPayload,
    _i2.JsonTimestampsInputOutput,
    _i2.JsonTimestampsInputOutputPayload,
    _i2.JsonTimestampsInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.JsonTimestampsInputOutputPayload,
          _i2.JsonTimestampsInputOutput,
          _i2.JsonTimestampsInputOutputPayload,
          _i2.JsonTimestampsInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.JsonTimestampsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/JsonTimestamps';
        b.successCode = 200;
      });
  @override
  _i2.JsonTimestampsInputOutput buildOutput(
          _i2.JsonTimestampsInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonTimestampsInputOutput((b) {
        b.dateTime = payload.dateTime;
        b.epochSeconds = payload.epochSeconds;
        b.httpDate = payload.httpDate;
        b.normal = payload.normal;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
