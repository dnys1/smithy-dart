// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_string_payload;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/string_payload_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class HttpStringPayloadOperation extends _i1.HttpOperation<String,
    _i2.StringPayloadInput, String, _i2.StringPayloadInput> {
  @override
  late final List<
      _i1.HttpProtocol<String, _i2.StringPayloadInput, String,
          _i2.StringPayloadInput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.StringPayloadInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/StringPayload';
        b.successCode = 200;
      });
  @override
  _i2.StringPayloadInput buildOutput(
          String? payload, _i5.AWSStreamedHttpResponse response) =>
      _i2.StringPayloadInput((b) {
        b.payload = payload;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
