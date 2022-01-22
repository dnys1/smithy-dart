// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.timestamp_format_headers;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/timestamp_format_headers_io.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example tests how timestamp request and response headers are serialized.
class TimestampFormatHeadersOperation extends _i1.HttpOperation<
    _i2.TimestampFormatHeadersIoPayload,
    _i2.TimestampFormatHeadersIo,
    _i2.TimestampFormatHeadersIoPayload,
    _i2.TimestampFormatHeadersIo> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.TimestampFormatHeadersIoPayload,
          _i2.TimestampFormatHeadersIo,
          _i2.TimestampFormatHeadersIoPayload,
          _i2.TimestampFormatHeadersIo>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.TimestampFormatHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/TimestampFormatHeaders';
        b.successCode = 200;
        if (input.memberEpochSeconds != null) {
          b.headers['X-memberEpochSeconds'] =
              _i1.Timestamp(input.memberEpochSeconds!)
                  .format(_i1.TimestampFormat.epochSeconds)
                  .toString();
        }
        if (input.memberHttpDate != null) {
          b.headers['X-memberHttpDate'] = _i1.Timestamp(input.memberHttpDate!)
              .format(_i1.TimestampFormat.httpDate)
              .toString();
        }
        if (input.memberDateTime != null) {
          b.headers['X-memberDateTime'] = _i1.Timestamp(input.memberDateTime!)
              .format(_i1.TimestampFormat.dateTime)
              .toString();
        }
        if (input.defaultFormat != null) {
          b.headers['X-defaultFormat'] = _i1.Timestamp(input.defaultFormat!)
              .format(_i1.TimestampFormat.httpDate)
              .toString();
        }
        if (input.targetEpochSeconds != null) {
          b.headers['X-targetEpochSeconds'] =
              _i1.Timestamp(input.targetEpochSeconds!)
                  .format(_i1.TimestampFormat.epochSeconds)
                  .toString();
        }
        if (input.targetHttpDate != null) {
          b.headers['X-targetHttpDate'] = _i1.Timestamp(input.targetHttpDate!)
              .format(_i1.TimestampFormat.httpDate)
              .toString();
        }
        if (input.targetDateTime != null) {
          b.headers['X-targetDateTime'] = _i1.Timestamp(input.targetDateTime!)
              .format(_i1.TimestampFormat.dateTime)
              .toString();
        }
      });
  @override
  _i2.TimestampFormatHeadersIo buildOutput(
          _i2.TimestampFormatHeadersIoPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.TimestampFormatHeadersIo((b) {
        if (response.headers['X-memberEpochSeconds'] != null) {
          b.memberEpochSeconds = _i1.Timestamp.parse(
                  int.parse(response.headers['X-memberEpochSeconds']!),
                  format: _i1.TimestampFormat.epochSeconds)
              .asDateTime;
        }
        if (response.headers['X-memberHttpDate'] != null) {
          b.memberHttpDate = _i1.Timestamp.parse(
                  response.headers['X-memberHttpDate']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['X-memberDateTime'] != null) {
          b.memberDateTime = _i1.Timestamp.parse(
                  response.headers['X-memberDateTime']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
        if (response.headers['X-defaultFormat'] != null) {
          b.defaultFormat = _i1.Timestamp.parse(
                  response.headers['X-defaultFormat']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['X-targetEpochSeconds'] != null) {
          b.targetEpochSeconds = _i1.Timestamp.parse(
                  int.parse(response.headers['X-targetEpochSeconds']!),
                  format: _i1.TimestampFormat.epochSeconds)
              .asDateTime;
        }
        if (response.headers['X-targetHttpDate'] != null) {
          b.targetHttpDate = _i1.Timestamp.parse(
                  response.headers['X-targetHttpDate']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['X-targetDateTime'] != null) {
          b.targetDateTime = _i1.Timestamp.parse(
                  response.headers['X-targetDateTime']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
