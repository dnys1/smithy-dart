// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.host_with_path_operation;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

class HostWithPathOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i2.AwsJson1_0Protocol(
        serializers: _i3.serializers,
        builderFactories: _i3.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.HostWithPathOperation')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i4.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
