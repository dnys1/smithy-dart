// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.null_and_empty_headers_client;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/null_and_empty_headers_io.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Null and empty headers are not sent over the wire.
class NullAndEmptyHeadersClientOperation extends _i1.HttpOperation<
    _i2.NullAndEmptyHeadersIoPayload,
    _i2.NullAndEmptyHeadersIo,
    _i2.NullAndEmptyHeadersIoPayload,
    _i2.NullAndEmptyHeadersIo> {
  NullAndEmptyHeadersClientOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.NullAndEmptyHeadersIoPayload,
          _i2.NullAndEmptyHeadersIo,
          _i2.NullAndEmptyHeadersIoPayload,
          _i2.NullAndEmptyHeadersIo>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.NullAndEmptyHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/NullAndEmptyHeadersClient';
        if (input.a != null) {
          if (input.a!.isNotEmpty) {
            b.headers['X-A'] = input.a!;
          }
        }
        if (input.b != null) {
          if (input.b!.isNotEmpty) {
            b.headers['X-B'] = input.b!;
          }
        }
        if (input.c != null) {
          if (input.c!.isNotEmpty) {
            b.headers['X-C'] =
                input.c!.map((el) => _i1.sanitizeHeader(el)).join(', ');
          }
        }
      });
  @override
  int successCode([_i2.NullAndEmptyHeadersIo? output]) => 200;
  @override
  _i2.NullAndEmptyHeadersIo buildOutput(
          _i2.NullAndEmptyHeadersIoPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.NullAndEmptyHeadersIo.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
