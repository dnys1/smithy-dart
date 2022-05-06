// Generated with smithy-dart 0.4.0. DO NOT MODIFY.

library generic_json.generic_json.operation.unit_input_and_output_operation;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:generic_json/src/generic_json/common/serializers.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

class UnitInputAndOutputOperation
    extends _i1.HttpOperation<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit> {
  UnitInputAndOutputOperation({required this.baseUri});

  @override
  late final List<_i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>>
      protocols = [
    _i1.GenericJsonProtocol(
        serializers: _i2.serializers,
        builderFactories: _i2.builderFactories,
        requestInterceptors: [],
        responseInterceptors: [])
  ];

  @override
  final Uri baseUri;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/UnitInputAndOutput';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i3.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
