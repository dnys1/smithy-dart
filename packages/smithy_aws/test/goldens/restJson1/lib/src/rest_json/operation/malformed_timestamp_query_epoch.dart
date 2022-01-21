// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_timestamp_query_epoch;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_query_epoch_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedTimestampQueryEpochOperation extends _i1.HttpOperation<
    _i2.MalformedTimestampQueryEpochInputPayload,
    _i2.MalformedTimestampQueryEpochInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.MalformedTimestampQueryEpochInputPayload,
          _i2.MalformedTimestampQueryEpochInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedTimestampQueryEpochInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedTimestampQueryEpoch';
        b.successCode = 200;
        b.queryParameters.add(
            'timestamp',
            _i1.Timestamp(input.timestamp)
                .format(_i1.TimestampFormat.dateTime)
                .toString());
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
