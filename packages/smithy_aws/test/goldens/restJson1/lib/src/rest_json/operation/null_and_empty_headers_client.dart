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
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.NullAndEmptyHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/NullAndEmptyHeadersClient';
        b.successCode = 200;
        if (input.a != null) {
          b.headers['X-A'] = input.a!;
        }
        if (input.b != null) {
          b.headers['X-B'] = input.b!;
        }
        if (input.c != null) {
          b.headers['X-C'] = input.c!.map((el) => el).join(',');
        }
      });
  @override
  _i2.NullAndEmptyHeadersIo buildOutput(
          _i2.NullAndEmptyHeadersIoPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.NullAndEmptyHeadersIo((b) {});
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
