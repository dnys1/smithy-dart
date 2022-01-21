// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_blob_input;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_blob_input.g.dart';

abstract class MalformedBlobInput
    with _i1.HttpInput<MalformedBlobInputPayload>
    implements
        Built<MalformedBlobInput, MalformedBlobInputBuilder>,
        _i1.HasPayload<MalformedBlobInputPayload> {
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
  @override
  MalformedBlobInputPayload getPayload() =>
      MalformedBlobInputPayload((b) => b..blob = blob);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedBlobInputPayload
    implements
        Built<MalformedBlobInputPayload, MalformedBlobInputPayloadBuilder> {
  factory MalformedBlobInputPayload(
          [void Function(MalformedBlobInputPayloadBuilder) updates]) =
      _$MalformedBlobInputPayload;

  const MalformedBlobInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBlobInputPayloadBuilder b) {}
  _i2.Uint8List? get blob;
}

class _MalformedBlobInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedBlobInputPayload> {
  const _MalformedBlobInputRestJson1Serializer() : super('MalformedBlobInput');

  @override
  Iterable<Type> get types => const [
        MalformedBlobInput,
        _$MalformedBlobInput,
        MalformedBlobInputPayload,
        _$MalformedBlobInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedBlobInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedBlobInputPayloadBuilder();
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
    final payload = object is MalformedBlobInput
        ? object.getPayload()
        : (object as MalformedBlobInputPayload);
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
