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
  TimestampFormatHeadersOperation({required this.region});

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
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i3.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.TimestampFormatHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/TimestampFormatHeaders';
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
  int successCode([_i2.TimestampFormatHeadersIo? output]) => 200;
  @override
  _i2.TimestampFormatHeadersIo buildOutput(
          _i2.TimestampFormatHeadersIoPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.TimestampFormatHeadersIo.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
