// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.malformed_double;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/malformed_double_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedDoubleOperation extends _i1.HttpOperation<
    _i2.MalformedDoubleInputPayload,
    _i2.MalformedDoubleInput,
    _i1.Unit,
    _i1.Unit> {
  MalformedDoubleOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<_i2.MalformedDoubleInputPayload,
          _i2.MalformedDoubleInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          _i3.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedDoubleInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedDouble/{doubleInPath}';
        if (input.doubleInHeader != null) {
          b.headers['doubleInHeader'] = input.doubleInHeader!.toString();
        }
        if (input.doubleInQuery != null) {
          b.queryParameters
              .add('doubleInQuery', input.doubleInQuery!.toString());
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
