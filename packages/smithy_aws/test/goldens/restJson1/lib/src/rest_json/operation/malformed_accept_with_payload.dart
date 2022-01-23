// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_accept_with_payload;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/malformed_accept_with_payload_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class MalformedAcceptWithPayloadOperation extends _i1.HttpOperation<_i1.Unit,
    _i1.Unit, _i2.Uint8List, _i3.MalformedAcceptWithPayloadOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.Uint8List,
          _i3.MalformedAcceptWithPayloadOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoContentLength(),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedAcceptWithPayload';
      });
  @override
  int successCode([_i3.MalformedAcceptWithPayloadOutput? output]) => 200;
  @override
  _i3.MalformedAcceptWithPayloadOutput buildOutput(
          _i2.Uint8List? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.MalformedAcceptWithPayloadOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
