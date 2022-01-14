// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.operation.map_input;

import 'package:http_binding_map_model/src/test/model/map_input_error.dart'
    as _i6;
import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i2;
import 'package:http_binding_map_model/src/test/model/server_error.dart' as _i5;
import 'package:http_binding_map_model/src/test/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MapInputOperation extends _i1
    .HttpOperation<_i2.MapInputRequest, _i2.MapInputRequest, _i1.Unit> {
  @override
  late final List<
          _i1.HttpProtocol<_i2.MapInputRequest, _i2.MapInputRequest, _i1.Unit>>
      protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.MapInputRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/input/map';
        b.successCode = 200;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(_i1.ErrorKind.server, _i5.ServerError),
        _i1.SmithyError(_i1.ErrorKind.client, _i6.MapInputError,
            statusCode: 429,
            retryConfig: _i1.RetryConfig(isThrottlingError: false))
      ];
}
