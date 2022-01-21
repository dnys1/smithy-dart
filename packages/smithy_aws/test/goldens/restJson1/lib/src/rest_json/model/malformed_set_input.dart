// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_set_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_set_input.g.dart';

abstract class MalformedSetInput
    with _i1.HttpInput<MalformedSetInputPayload>
    implements
        Built<MalformedSetInput, MalformedSetInputBuilder>,
        _i1.HasPayload<MalformedSetInputPayload> {
  factory MalformedSetInput([void Function(MalformedSetInputBuilder) updates]) =
      _$MalformedSetInput;

  const MalformedSetInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedSetInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedSetInputBuilder b) {}
  _i2.BuiltSet<String>? get set;
  @override
  MalformedSetInputPayload getPayload() =>
      MalformedSetInputPayload((b) => b..set = set);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedSetInputPayload
    implements
        Built<MalformedSetInputPayload, MalformedSetInputPayloadBuilder> {
  factory MalformedSetInputPayload(
          [void Function(MalformedSetInputPayloadBuilder) updates]) =
      _$MalformedSetInputPayload;

  const MalformedSetInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedSetInputPayloadBuilder b) {}
  _i2.BuiltSet<String>? get set;
}

class _MalformedSetInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedSetInputPayload> {
  const _MalformedSetInputRestJson1Serializer() : super('MalformedSetInput');

  @override
  Iterable<Type> get types => const [
        MalformedSetInput,
        _$MalformedSetInput,
        MalformedSetInputPayload,
        _$MalformedSetInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedSetInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedSetInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'set':
          if (value != null) {
            result.set = (serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.BuiltSet, [FullType(String)]))
                as _i2.BuiltSet<String>);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedSetInput
        ? object.getPayload()
        : (object as MalformedSetInputPayload);
    final result = <Object?>[];
    if (payload.set != null) {
      result
        ..add('set')
        ..add(serializers.serialize(payload.set,
            specifiedType:
                const FullType.nullable(_i2.BuiltSet, [FullType(String)])));
    }
    return result;
  }
}
