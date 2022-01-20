// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.endpoint_with_host_label_operation;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc10/model/endpoint_with_host_label_operation_input.dart'
    as _i2;
import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class EndpointWithHostLabelOperation extends _i1.HttpOperation<
    _i2.EndpointWithHostLabelOperationInputPayload,
    _i2.EndpointWithHostLabelOperationInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.EndpointWithHostLabelOperationInputPayload,
          _i2.EndpointWithHostLabelOperationInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.AwsJson1_0Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonRpc10.EndpointWithHostLabelOperation')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.EndpointWithHostLabelOperationInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
        b.hostPrefix = 'foo.{label}.';
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
