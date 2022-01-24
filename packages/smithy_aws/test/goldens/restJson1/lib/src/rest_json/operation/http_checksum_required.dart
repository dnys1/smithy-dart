// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_checksum_required;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/http_checksum_required_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example tests httpChecksumRequired trait
class HttpChecksumRequiredOperation extends _i1.HttpOperation<
    _i2.HttpChecksumRequiredInputOutput,
    _i2.HttpChecksumRequiredInputOutput,
    _i2.HttpChecksumRequiredInputOutput,
    _i2.HttpChecksumRequiredInputOutput> {
  HttpChecksumRequiredOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpChecksumRequiredInputOutput,
          _i2.HttpChecksumRequiredInputOutput,
          _i2.HttpChecksumRequiredInputOutput,
          _i2.HttpChecksumRequiredInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithChecksum(),
          const _i1.WithContentLength(),
          _i3.WithEndpointResolver('Rest Json Protocol', region)
        ])
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(_i2.HttpChecksumRequiredInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/HttpChecksumRequired';
      });
  @override
  int successCode([_i2.HttpChecksumRequiredInputOutput? output]) => 200;
  @override
  _i2.HttpChecksumRequiredInputOutput buildOutput(
          _i2.HttpChecksumRequiredInputOutput payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.HttpChecksumRequiredInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
