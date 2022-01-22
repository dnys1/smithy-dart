// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_set_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_set_input.g.dart';

abstract class MalformedSetInput
    with _i1.HttpInput<MalformedSetInput>
    implements Built<MalformedSetInput, MalformedSetInputBuilder> {
  factory MalformedSetInput([void Function(MalformedSetInputBuilder) updates]) =
      _$MalformedSetInput;

  const MalformedSetInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedSetInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedSetInputBuilder b) {}
  _i2.BuiltSet<String>? get set;
}

class _MalformedSetInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedSetInput> {
  const _MalformedSetInputRestJson1Serializer() : super('MalformedSetInput');

  @override
  Iterable<Type> get types => const [MalformedSetInput, _$MalformedSetInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedSetInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedSetInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'set':
          if (value != null) {
            result.set.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.BuiltSet, [FullType(String)]))
                as _i2.BuiltSet<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedSetInput);
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
