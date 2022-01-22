// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_payload_with_structure_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/nested_payload.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_structure_input_output.g.dart';

abstract class HttpPayloadWithStructureInputOutput
    with
        _i1.HttpInput<_i2.NestedPayload>
    implements
        Built<HttpPayloadWithStructureInputOutput,
            HttpPayloadWithStructureInputOutputBuilder> {
  factory HttpPayloadWithStructureInputOutput(
          [void Function(HttpPayloadWithStructureInputOutputBuilder) updates]) =
      _$HttpPayloadWithStructureInputOutput;

  const HttpPayloadWithStructureInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPayloadWithStructureInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadWithStructureInputOutputBuilder b) {}
  _i2.NestedPayload? get nested;
  _i2.NestedPayload? getPayload() => nested;
}

class _HttpPayloadWithStructureInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _HttpPayloadWithStructureInputOutputRestJson1Serializer()
      : super('HttpPayloadWithStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithStructureInputOutput,
        _$HttpPayloadWithStructureInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.NestedPayload deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.NestedPayload)) as _i2.NestedPayload);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is HttpPayloadWithStructureInputOutput
        ? object.getPayload()
        : (object as _i2.NestedPayload?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.NestedPayload)) as Object);
  }
}
