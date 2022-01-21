// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.query_params_as_string_list_map;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/query_params_as_string_list_map_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class QueryParamsAsStringListMapOperation extends _i1.HttpOperation<
    _i2.QueryParamsAsStringListMapInputPayload,
    _i2.QueryParamsAsStringListMapInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.QueryParamsAsStringListMapInputPayload,
          _i2.QueryParamsAsStringListMapInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.QueryParamsAsStringListMapInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/StringListMap';
        b.successCode = 200;
        if (input.qux != null) {
          b.queryParameters.add('corge', input.qux!);
        }
        if (input.foo != null) {
          for (var entry in input.foo!.toMap().entries) {
            for (var value in entry.value) {
              b.queryParameters.add(entry.key, value);
            }
          }
        }
      });
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
