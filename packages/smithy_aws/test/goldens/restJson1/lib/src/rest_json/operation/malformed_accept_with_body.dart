// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_accept_with_body;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/greeting_struct.dart' as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedAcceptWithBodyOperation extends _i1
    .HttpOperation<_i1.Unit, _i1.Unit, _i2.GreetingStruct, _i2.GreetingStruct> {
  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingStruct,
          _i2.GreetingStruct>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedAcceptWithBody';
        b.successCode = 200;
      });
  @override
  _i2.GreetingStruct buildOutput(
          _i2.GreetingStruct payload, _i5.AWSStreamedHttpResponse response) =>
      _i2.GreetingStruct((b) {});
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
