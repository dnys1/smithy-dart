// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.query_precedence;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/query_precedence_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class QueryPrecedenceOperation extends _i1.HttpOperation<
    _i2.QueryPrecedenceInputPayload,
    _i2.QueryPrecedenceInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.QueryPrecedenceInputPayload,
          _i2.QueryPrecedenceInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoContentLength(),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.QueryPrecedenceInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/Precedence';
        if (input.foo != null) {
          b.queryParameters.add('bar', input.foo!);
        }
        if (input.baz != null) {
          for (var entry in input.baz!.toMap().entries) {
            b.queryParameters.add(entry.key, entry.value);
          }
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
