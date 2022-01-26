// Generated code. DO NOT MODIFY.

library documentation.test.operation.get_foo;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:documentation/src/test/common/serializers.dart' as _i4;
import 'package:documentation/src/test/model/get_foo_error.dart' as _i6;
import 'package:documentation/src/test/model/get_foo_input.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy/src/protocol/generic_json_protocol.dart' as _i3;

class GetFooOperation extends _i1
    .HttpOperation<_i2.GetFooInput, _i2.GetFooInput, _i1.Unit, _i1.Unit> {
  GetFooOperation({required this.baseUri});

  @override
  late final List<
      _i1.HttpProtocol<_i2.GetFooInput, _i2.GetFooInput, _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.GenericJsonProtocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  @override
  final Uri baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.GetFooInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
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
            _i1.ShapeId(
                namespace: 'com.test.documentation', shape: 'GetFooError'),
            _i1.ErrorKind.client,
            _i6.GetFooError,
            builder: _i6.GetFooError.fromResponse)
      ];
}
