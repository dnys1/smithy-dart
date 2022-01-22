// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_blob_input;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_blob_input.g.dart';

abstract class MalformedBlobInput
    with _i1.HttpInput<MalformedBlobInput>
    implements Built<MalformedBlobInput, MalformedBlobInputBuilder> {
  factory MalformedBlobInput(
          [void Function(MalformedBlobInputBuilder) updates]) =
      _$MalformedBlobInput;

  const MalformedBlobInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedBlobInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBlobInputBuilder b) {}
  _i2.Uint8List? get blob;
}

class _MalformedBlobInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedBlobInput> {
  const _MalformedBlobInputRestJson1Serializer() : super('MalformedBlobInput');

  @override
  Iterable<Type> get types => const [MalformedBlobInput, _$MalformedBlobInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedBlobInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedBlobInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedBlobInput);
    final result = <Object?>[];
    if (payload.blob != null) {
      result
        ..add('blob')
        ..add(serializers.serialize(payload.blob,
            specifiedType: const FullType.nullable(_i2.Uint8List)));
    }
    return result;
  }
}
