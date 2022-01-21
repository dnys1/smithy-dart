// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.document_type;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/document_type_input_output.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example serializes a document as part of the payload.
class DocumentTypeOperation extends _i1.HttpOperation<
    _i2.DocumentTypeInputOutputPayload,
    _i2.DocumentTypeInputOutput,
    _i2.DocumentTypeInputOutputPayload,
    _i2.DocumentTypeInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.DocumentTypeInputOutputPayload,
          _i2.DocumentTypeInputOutput,
          _i2.DocumentTypeInputOutputPayload,
          _i2.DocumentTypeInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.DocumentTypeInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/DocumentType';
        b.successCode = 200;
      });
  @override
  _i2.DocumentTypeInputOutput buildOutput(
          _i2.DocumentTypeInputOutputPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.DocumentTypeInputOutput((b) {
        b.documentValue = payload.documentValue;
        b.stringValue = payload.stringValue;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
