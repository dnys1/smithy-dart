import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';

const testSerializers = [_BinaryTestSerializer()];

/// Parameter values that contain binary data MUST be defined using values that
/// can be represented in plain text (for example, use "foo" and not "Zm9vCg==").
/// While this limits the kinds of binary values that can be tested in protocol
/// tests, it allows protocol tests to demonstrate the requirement of many
/// protocols that binary data is automatically base64 encoded and decoded.
class _BinaryTestSerializer implements PrimitiveSerializer<Uint8List> {
  const _BinaryTestSerializer();

  @override
  Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    serialized as String;
    return Uint8List.fromList(utf8.encode(serialized));
  }

  @override
  Object serialize(Serializers serializers, Uint8List object,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  Iterable<Type> get types => [Uint8List, Uint8List(0).runtimeType];

  @override
  String get wireName => 'Blob';
}
