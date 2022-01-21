// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_response_code;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/http_response_code_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class HttpResponseCodeOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.HttpResponseCodeOutputPayload, _i2.HttpResponseCodeOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.HttpResponseCodeOutputPayload,
          _i2.HttpResponseCodeOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/HttpResponseCode';
        b.successCode = 200;
      });
  @override
  _i2.HttpResponseCodeOutput buildOutput(
          _i2.HttpResponseCodeOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.HttpResponseCodeOutput((b) {});
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
