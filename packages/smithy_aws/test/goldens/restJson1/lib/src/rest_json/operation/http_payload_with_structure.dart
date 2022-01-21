// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_payload_with_structure;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/http_payload_with_structure_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/model/nested_payload.dart' as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples serializes a structure in the payload.
///
/// Note that serializing a structure changes the wrapper element name
/// to match the targeted structure.
class HttpPayloadWithStructureOperation extends _i1.HttpOperation<
    _i2.NestedPayload,
    _i3.HttpPayloadWithStructureInputOutput,
    _i2.NestedPayload,
    _i3.HttpPayloadWithStructureInputOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.NestedPayload,
          _i3.HttpPayloadWithStructureInputOutput,
          _i2.NestedPayload,
          _i3.HttpPayloadWithStructureInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.HttpPayloadWithStructureInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/HttpPayloadWithStructure';
        b.successCode = 200;
      });
  @override
  _i3.HttpPayloadWithStructureInputOutput buildOutput(
          _i2.NestedPayload? payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPayloadWithStructureInputOutput((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
