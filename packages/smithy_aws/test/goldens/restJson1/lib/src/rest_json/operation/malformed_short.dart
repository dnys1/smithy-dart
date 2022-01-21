// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_short;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/malformed_short_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedShortOperation extends _i1.HttpOperation<
    _i2.MalformedShortInputPayload,
    _i2.MalformedShortInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.MalformedShortInputPayload, _i2.MalformedShortInput,
          _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedShortInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedShort/{shortInPath}';
        b.successCode = 200;
        if (input.shortInHeader != null) {
          b.headers['shortInHeader'] = input.shortInHeader!.toString();
        }
        if (input.shortInQuery != null) {
          b.queryParameters.add('shortInQuery', input.shortInQuery!.toString());
        }
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
