// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.no_input_and_output;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc_10/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc_10/common/serializers.dart' as _i4;
import 'package:aws_json1_0/src/json_rpc_10/model/no_input_and_output_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// The example tests how requests and responses are serialized when there's
/// no request or response payload because the operation has no input and the
/// output is empty. While this should be rare, code generators must support
/// this.
class NoInputAndOutputOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.NoInputAndOutputOutput, _i2.NoInputAndOutputOutput> {
  /// The example tests how requests and responses are serialized when there's
  /// no request or response payload because the operation has no input and the
  /// output is empty. While this should be rare, code generators must support
  /// this.
  NoInputAndOutputOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.NoInputAndOutputOutput,
          _i2.NoInputAndOutputOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonRpc10.NoInputAndOutput')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.NoInputAndOutputOutput? output]) => 200;
  @override
  _i2.NoInputAndOutputOutput buildOutput(_i2.NoInputAndOutputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.NoInputAndOutputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i6.endpointResolver
      .resolveWithContext(_i6.sdkId, region, context)
      .endpoint;
}
