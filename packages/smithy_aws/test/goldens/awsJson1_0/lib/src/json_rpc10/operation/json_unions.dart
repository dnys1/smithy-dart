// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.json_unions;

import 'package:aws_json1_0/src/json_rpc10/model/json_unions_input.dart' as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/json_unions_output.dart'
    as _i3;
import 'package:aws_json1_0/src/json_rpc10/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation uses unions for inputs and outputs.
class JsonUnionsOperation extends _i1.HttpOperation<_i2.JsonUnionsInputPayload,
    _i2.JsonUnionsInput, _i3.JsonUnionsOutputPayload, _i3.JsonUnionsOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonUnionsInputPayload, _i2.JsonUnionsInput,
          _i3.JsonUnionsOutputPayload, _i3.JsonUnionsOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithHeader('X-Amz-Target', 'JsonRpc10.JsonUnions')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.JsonUnionsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i3.JsonUnionsOutput buildOutput(
          _i3.JsonUnionsOutputPayload payload, _i1.HttpResponse response) =>
      _i3.JsonUnionsOutput((b) {
        b.contents = payload.contents;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
