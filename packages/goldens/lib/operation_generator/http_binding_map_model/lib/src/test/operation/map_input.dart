// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.operation.map_input;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:http_binding_map_model/src/test/common/serializers.dart' as _i4;
import 'package:http_binding_map_model/src/test/model/map_input_error.dart'
    as _i7;
import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i2;
import 'package:http_binding_map_model/src/test/model/server_error.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MapInputOperation extends _i1.HttpOperation<_i2.MapInputRequest,
    _i2.MapInputRequest, _i1.Unit, _i1.Unit> {
  MapInputOperation({required this.baseUri});

  @override
  late final List<
      _i1.HttpProtocol<_i2.MapInputRequest, _i2.MapInputRequest, _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'Test.MapInput')
        ])
  ];

  @override
  final Uri baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.MapInputRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/input/map';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(namespace: 'com.test', shape: 'ServerError'),
            _i1.ErrorKind.server,
            _i6.ServerError,
            builder: _i6.ServerError.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(namespace: 'com.test', shape: 'MapInputError'),
            _i1.ErrorKind.client,
            _i7.MapInputError,
            statusCode: 429,
            retryConfig: _i1.RetryConfig(isThrottlingError: false),
            builder: _i7.MapInputError.fromResponse)
      ];
}
