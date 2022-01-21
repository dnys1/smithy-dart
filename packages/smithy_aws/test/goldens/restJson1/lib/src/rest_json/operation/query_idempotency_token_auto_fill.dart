// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.query_idempotency_token_auto_fill;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/query_idempotency_token_auto_fill_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Automatically adds idempotency tokens.
class QueryIdempotencyTokenAutoFillOperation extends _i1.HttpOperation<
    _i2.QueryIdempotencyTokenAutoFillInputPayload,
    _i2.QueryIdempotencyTokenAutoFillInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.QueryIdempotencyTokenAutoFillInputPayload,
          _i2.QueryIdempotencyTokenAutoFillInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.QueryIdempotencyTokenAutoFillInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/QueryIdempotencyTokenAutoFill';
        b.successCode = 200;
        if (input.token != null) {
          b.queryParameters.add('token', input.token!);
        }
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
