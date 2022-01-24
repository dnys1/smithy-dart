// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_request_with_labels_and_timestamp_format;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/http_request_with_labels_and_timestamp_format_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// The example tests how requests serialize different timestamp formats in the
/// URI path.
class HttpRequestWithLabelsAndTimestampFormatOperation
    extends _i1.HttpOperation<
        _i2.HttpRequestWithLabelsAndTimestampFormatInputPayload,
        _i2.HttpRequestWithLabelsAndTimestampFormatInput,
        _i1.Unit,
        _i1.Unit> {
  HttpRequestWithLabelsAndTimestampFormatOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpRequestWithLabelsAndTimestampFormatInputPayload,
          _i2.HttpRequestWithLabelsAndTimestampFormatInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
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
  _i1.HttpRequest buildRequest(
          _i2.HttpRequestWithLabelsAndTimestampFormatInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path =
            '/HttpRequestWithLabelsAndTimestampFormat/{memberEpochSeconds}/{memberHttpDate}/{memberDateTime}/{defaultFormat}/{targetEpochSeconds}/{targetHttpDate}/{targetDateTime}';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
