// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.omits_null_serializes_empty_string;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/omits_null_serializes_empty_string_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Omits null, but serializes empty string value.
class OmitsNullSerializesEmptyStringOperation extends _i1.HttpOperation<
    _i2.OmitsNullSerializesEmptyStringInputPayload,
    _i2.OmitsNullSerializesEmptyStringInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.OmitsNullSerializesEmptyStringInputPayload,
          _i2.OmitsNullSerializesEmptyStringInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.OmitsNullSerializesEmptyStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/OmitsNullSerializesEmptyString';
        b.successCode = 200;
        if (input.nullValue != null) {
          b.queryParameters.add('Null', input.nullValue!);
        }
        if (input.emptyString != null) {
          b.queryParameters.add('Empty', input.emptyString!);
        }
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
