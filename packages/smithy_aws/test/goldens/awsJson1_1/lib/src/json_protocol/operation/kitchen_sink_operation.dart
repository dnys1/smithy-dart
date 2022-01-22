// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.kitchen_sink_operation;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/error_with_members.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/model/error_without_members.dart'
    as _i7;
import 'package:aws_json1_1/src/json_protocol/model/kitchen_sink.dart' as _i2;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class KitchenSinkOperation extends _i1.HttpOperation<_i2.KitchenSink,
    _i2.KitchenSink, _i2.KitchenSink, _i2.KitchenSink> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.KitchenSink, _i2.KitchenSink, _i2.KitchenSink,
          _i2.KitchenSink>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.KitchenSinkOperation')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.KitchenSink input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i2.KitchenSink buildOutput(
          _i2.KitchenSink payload, _i5.AWSStreamedHttpResponse response) =>
      _i2.KitchenSink((b) {});
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'ErrorWithMembers'),
            _i1.ErrorKind.client,
            _i6.ErrorWithMembers),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json',
                shape: 'ErrorWithoutMembers'),
            _i1.ErrorKind.server,
            _i7.ErrorWithoutMembers)
      ];
}
