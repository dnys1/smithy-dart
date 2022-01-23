// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.document_type_as_payload;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:built_value/json_object.dart' as _i2;
import 'package:rest_json1/src/rest_json/model/document_type_as_payload_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example serializes a document as the entire HTTP payload.
class DocumentTypeAsPayloadOperation extends _i1.HttpOperation<
    _i2.JsonObject,
    _i3.DocumentTypeAsPayloadInputOutput,
    _i2.JsonObject,
    _i3.DocumentTypeAsPayloadInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonObject, _i3.DocumentTypeAsPayloadInputOutput,
          _i2.JsonObject, _i3.DocumentTypeAsPayloadInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.DocumentTypeAsPayloadInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/DocumentTypeAsPayload';
      });
  @override
  int successCode([_i3.DocumentTypeAsPayloadInputOutput? output]) => 200;
  @override
  _i3.DocumentTypeAsPayloadInputOutput buildOutput(
          _i2.JsonObject? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.DocumentTypeAsPayloadInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
