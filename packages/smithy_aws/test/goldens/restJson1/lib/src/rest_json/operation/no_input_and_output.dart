// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.no_input_and_output;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/no_input_and_output_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// The example tests how requests and responses are serialized when there's
/// no request or response payload because the operation has no input and the
/// output is empty. While this should be rare, code generators must support
/// this.
class NoInputAndOutputOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.NoInputAndOutputOutput, _i2.NoInputAndOutputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.NoInputAndOutputOutput,
          _i2.NoInputAndOutputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/NoInputAndOutputOutput';
        b.successCode = 200;
      });
  @override
  _i2.NoInputAndOutputOutput buildOutput(_i2.NoInputAndOutputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.NoInputAndOutputOutput();
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
