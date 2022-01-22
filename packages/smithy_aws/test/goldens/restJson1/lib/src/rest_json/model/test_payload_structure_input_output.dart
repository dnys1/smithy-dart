// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.test_payload_structure_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/payload_config.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'test_payload_structure_input_output.g.dart';

abstract class TestPayloadStructureInputOutput
    with
        _i1.HttpInput<_i2.PayloadConfig>
    implements
        Built<TestPayloadStructureInputOutput,
            TestPayloadStructureInputOutputBuilder> {
  factory TestPayloadStructureInputOutput(
          [void Function(TestPayloadStructureInputOutputBuilder) updates]) =
      _$TestPayloadStructureInputOutput;

  const TestPayloadStructureInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _TestPayloadStructureInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestPayloadStructureInputOutputBuilder b) {}
  _i2.PayloadConfig? get payloadConfig;
  String? get testId;
  _i2.PayloadConfig? getPayload() => payloadConfig;
}

class _TestPayloadStructureInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _TestPayloadStructureInputOutputRestJson1Serializer()
      : super('TestPayloadStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        TestPayloadStructureInputOutput,
        _$TestPayloadStructureInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.PayloadConfig deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.PayloadConfig)) as _i2.PayloadConfig);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is TestPayloadStructureInputOutput
        ? object.getPayload()
        : (object as _i2.PayloadConfig?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.PayloadConfig)) as Object);
  }
}
