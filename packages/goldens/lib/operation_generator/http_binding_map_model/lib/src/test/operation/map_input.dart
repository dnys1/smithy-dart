// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.operation.map_input;

import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MapInputOperation extends _i1
    .HttpOperation<_i2.MapInputRequest, _i2.MapInputRequest, _i1.Unit> {
  @override
  late final List<
          _i1.HttpProtocol<_i2.MapInputRequest, _i2.MapInputRequest, _i1.Unit>>
      protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: [..._i2.MapInputRequest.serializers], interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.MapInputRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/input/map';
        b.successCode = 200;
      });
  @override
  Map<int, Type> get errorTypes => const {};
}
