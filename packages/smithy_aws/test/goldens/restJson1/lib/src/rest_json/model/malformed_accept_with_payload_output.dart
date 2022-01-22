// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_accept_with_payload_output;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_accept_with_payload_output.g.dart';

abstract class MalformedAcceptWithPayloadOutput
    implements
        Built<MalformedAcceptWithPayloadOutput,
            MalformedAcceptWithPayloadOutputBuilder> {
  factory MalformedAcceptWithPayloadOutput(
          [void Function(MalformedAcceptWithPayloadOutputBuilder) updates]) =
      _$MalformedAcceptWithPayloadOutput;

  const MalformedAcceptWithPayloadOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedAcceptWithPayloadOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedAcceptWithPayloadOutputBuilder b) {}
  _i2.Uint8List? get payload;
  _i2.Uint8List? getPayload() => payload;
}

class _MalformedAcceptWithPayloadOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _MalformedAcceptWithPayloadOutputRestJson1Serializer()
      : super('MalformedAcceptWithPayloadOutput');

  @override
  Iterable<Type> get types => const [
        MalformedAcceptWithPayloadOutput,
        _$MalformedAcceptWithPayloadOutput
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
    final payload = object is MalformedAcceptWithPayloadOutput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.Uint8List)) as Object);
  }
}
