// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.no_input_and_no_output;

import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// The example tests how requests and responses are serialized when there's
/// no request or response payload because the operation has no input or output.
/// While this should be rare, code generators must support this.
class NoInputAndNoOutputOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i2.AwsJson1_0Protocol(
        serializers: _i3.serializers,
        builderFactories: _i3.builderFactories,
        interceptors: [
          const _i1.WithHeader('X-Amz-Target', 'JsonRpc10.NoInputAndNoOutput')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i1.Unit buildOutput(_i1.Unit payload, _i1.HttpResponse response) => payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
