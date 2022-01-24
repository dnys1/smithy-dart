// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.json_lists;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This test case serializes JSON lists for the following cases for both input and output: 1. Normal JSON lists. 2. Normal JSON sets. 3. JSON lists of lists. 4. Lists of structures.
class JsonListsOperation extends _i1.HttpOperation<
    _i2.JsonListsInputOutput,
    _i2.JsonListsInputOutput,
    _i2.JsonListsInputOutput,
    _i2.JsonListsInputOutput> {
  JsonListsOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonListsInputOutput, _i2.JsonListsInputOutput,
          _i2.JsonListsInputOutput, _i2.JsonListsInputOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.JsonListsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/JsonLists';
      });
  @override
  int successCode([_i2.JsonListsInputOutput? output]) => 200;
  @override
  _i2.JsonListsInputOutput buildOutput(_i2.JsonListsInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.JsonListsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
