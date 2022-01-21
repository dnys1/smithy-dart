// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_payload_traits;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/http_payload_traits_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples serializes a blob shape in the payload.
///
/// In this example, no JSON document is synthesized because the payload is
/// not a structure or a union type.
class HttpPayloadTraitsOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.HttpPayloadTraitsInputOutput,
    _i2.Uint8List,
    _i3.HttpPayloadTraitsInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, _i3.HttpPayloadTraitsInputOutput,
          _i2.Uint8List, _i3.HttpPayloadTraitsInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.HttpPayloadTraitsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/HttpPayloadTraits';
        b.successCode = 200;
        if (input.foo != null) {
          b.headers['X-Foo'] = input.foo!;
        }
      });
  @override
  _i3.HttpPayloadTraitsInputOutput buildOutput(
          _i2.Uint8List? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPayloadTraitsInputOutput((b) {
        b.blob = payload;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
