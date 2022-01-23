// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.recursive_shapes;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Recursive shapes
class RecursiveShapesOperation extends _i1.HttpOperation<
    _i2.RecursiveShapesInputOutput,
    _i2.RecursiveShapesInputOutput,
    _i2.RecursiveShapesInputOutput,
    _i2.RecursiveShapesInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.RecursiveShapesInputOutput,
          _i2.RecursiveShapesInputOutput,
          _i2.RecursiveShapesInputOutput,
          _i2.RecursiveShapesInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.RecursiveShapesInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/RecursiveShapes';
      });
  @override
  int successCode([_i2.RecursiveShapesInputOutput? output]) => 200;
  @override
  _i2.RecursiveShapesInputOutput buildOutput(
          _i2.RecursiveShapesInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.RecursiveShapesInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
