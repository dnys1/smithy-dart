// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_timestamp_header_default;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/malformed_timestamp_header_default_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedTimestampHeaderDefaultOperation extends _i1.HttpOperation<
    _i2.MalformedTimestampHeaderDefaultInputPayload,
    _i2.MalformedTimestampHeaderDefaultInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.MalformedTimestampHeaderDefaultInputPayload,
          _i2.MalformedTimestampHeaderDefaultInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(
          _i2.MalformedTimestampHeaderDefaultInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedTimestampHeaderDefault';
        b.successCode = 200;
        b.headers['timestamp'] = _i1.Timestamp(input.timestamp)
            .format(_i1.TimestampFormat.unknown)
            .toString();
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
