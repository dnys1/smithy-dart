// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.endpoint_operation;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

class EndpointOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i2.RestJson1Protocol(
        serializers: _i3.serializers,
        builderFactories: _i3.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoContentLength(),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/EndpointOperation';
        b.hostPrefix = 'foo.';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i4.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
