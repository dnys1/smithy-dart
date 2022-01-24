// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.empty_input_and_empty_output;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/empty_input_and_empty_output_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/model/empty_input_and_empty_output_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// The example tests how requests and responses are serialized when there's
/// no request or response payload because the operation has an empty input
/// and empty output structure that reuses the same shape. While this should
/// be rare, code generators must support this.
class EmptyInputAndEmptyOutputOperation extends _i1.HttpOperation<
    _i2.EmptyInputAndEmptyOutputInput,
    _i2.EmptyInputAndEmptyOutputInput,
    _i3.EmptyInputAndEmptyOutputOutput,
    _i3.EmptyInputAndEmptyOutputOutput> {
  EmptyInputAndEmptyOutputOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.EmptyInputAndEmptyOutputInput,
          _i2.EmptyInputAndEmptyOutputInput,
          _i3.EmptyInputAndEmptyOutputOutput,
          _i3.EmptyInputAndEmptyOutputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i4.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.EmptyInputAndEmptyOutputInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/EmptyInputAndEmptyOutput';
      });
  @override
  int successCode([_i3.EmptyInputAndEmptyOutputOutput? output]) => 200;
  @override
  _i3.EmptyInputAndEmptyOutputOutput buildOutput(
          _i3.EmptyInputAndEmptyOutputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.EmptyInputAndEmptyOutputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
