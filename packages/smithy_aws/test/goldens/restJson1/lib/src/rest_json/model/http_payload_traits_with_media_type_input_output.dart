// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_payload_traits_with_media_type_input_output;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_traits_with_media_type_input_output.g.dart';

abstract class HttpPayloadTraitsWithMediaTypeInputOutput
    with
        _i1.HttpInput<_i2.Uint8List>
    implements
        Built<HttpPayloadTraitsWithMediaTypeInputOutput,
            HttpPayloadTraitsWithMediaTypeInputOutputBuilder> {
  factory HttpPayloadTraitsWithMediaTypeInputOutput(
      [void Function(HttpPayloadTraitsWithMediaTypeInputOutputBuilder)
          updates]) = _$HttpPayloadTraitsWithMediaTypeInputOutput;

  const HttpPayloadTraitsWithMediaTypeInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadTraitsWithMediaTypeInputOutputBuilder b) {}
  _i2.Uint8List? get blob;
  String? get foo;
  _i2.Uint8List? getPayload() => blob;
}

class _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
      : super('HttpPayloadTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadTraitsWithMediaTypeInputOutput,
        _$HttpPayloadTraitsWithMediaTypeInputOutput
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
    final payload = object is HttpPayloadTraitsWithMediaTypeInputOutput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.Uint8List)) as Object);
  }
}
