// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.string_payload_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'string_payload_input.g.dart';

abstract class StringPayloadInput
    with _i1.HttpInput<String>
    implements Built<StringPayloadInput, StringPayloadInputBuilder> {
  factory StringPayloadInput(
          [void Function(StringPayloadInputBuilder) updates]) =
      _$StringPayloadInput;

  const StringPayloadInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _StringPayloadInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StringPayloadInputBuilder b) {}
  String? get payload;
  String? getPayload() => payload;
}

class _StringPayloadInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _StringPayloadInputRestJson1Serializer() : super('StringPayloadInput');

  @override
  Iterable<Type> get types => const [StringPayloadInput, _$StringPayloadInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  String deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(String)) as String);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is StringPayloadInput
        ? object.getPayload()
        : (object as String?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(String)) as Object);
  }
}
