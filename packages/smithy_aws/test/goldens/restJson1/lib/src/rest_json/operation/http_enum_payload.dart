// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_enum_payload;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/enum_payload_input.dart' as _i3;
import 'package:rest_json1/src/rest_json/model/string_enum.dart' as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class HttpEnumPayloadOperation extends _i1.HttpOperation<_i2.StringEnum,
    _i3.EnumPayloadInput, _i2.StringEnum, _i3.EnumPayloadInput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.StringEnum, _i3.EnumPayloadInput, _i2.StringEnum,
          _i3.EnumPayloadInput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.EnumPayloadInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/EnumPayload';
        b.successCode = 200;
      });
  @override
  _i3.EnumPayloadInput buildOutput(
          _i2.StringEnum? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.EnumPayloadInput((b) {
        b.payload = payload;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
