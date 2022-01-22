// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_content_type_with_payload_input;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_content_type_with_payload_input.g.dart';

abstract class MalformedContentTypeWithPayloadInput
    with
        _i1.HttpInput<_i2.Uint8List>
    implements
        Built<MalformedContentTypeWithPayloadInput,
            MalformedContentTypeWithPayloadInputBuilder> {
  factory MalformedContentTypeWithPayloadInput(
      [void Function(MalformedContentTypeWithPayloadInputBuilder)
          updates]) = _$MalformedContentTypeWithPayloadInput;

  const MalformedContentTypeWithPayloadInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedContentTypeWithPayloadInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedContentTypeWithPayloadInputBuilder b) {}
  _i2.Uint8List? get payload;
  _i2.Uint8List? getPayload() => payload;
}

class _MalformedContentTypeWithPayloadInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _MalformedContentTypeWithPayloadInputRestJson1Serializer()
      : super('MalformedContentTypeWithPayloadInput');

  @override
  Iterable<Type> get types => const [
        MalformedContentTypeWithPayloadInput,
        _$MalformedContentTypeWithPayloadInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedContentTypeWithPayloadInput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.Uint8List)) as Object);
  }
}
