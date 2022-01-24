// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.null_operation;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/model/null_operation_input_output.dart'
    as _i2;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class NullOperation extends _i1.HttpOperation<
    _i2.NullOperationInputOutput,
    _i2.NullOperationInputOutput,
    _i2.NullOperationInputOutput,
    _i2.NullOperationInputOutput> {
  NullOperation(
      {required this.region,
      this.credentialsProvider =
          const _i3.AWSCredentialsProvider.dartEnvironment()});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.NullOperationInputOutput,
          _i2.NullOperationInputOutput,
          _i2.NullOperationInputOutput,
          _i2.NullOperationInputOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'JsonProtocol.NullOperation'),
          _i4.WithSigV4(
              region: region,
              serviceName: 'foo',
              credentialsProvider: credentialsProvider),
          _i4.WithEndpointResolver('Json Protocol', region)
        ])
  ];

  final String region;

  final _i3.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.NullOperationInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i2.NullOperationInputOutput? output]) => 200;
  @override
  _i2.NullOperationInputOutput buildOutput(_i2.NullOperationInputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.NullOperationInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
