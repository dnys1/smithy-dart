// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_union_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/simple_union.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_union_input.g.dart';

abstract class MalformedUnionInput
    with _i1.HttpInput<MalformedUnionInput>
    implements Built<MalformedUnionInput, MalformedUnionInputBuilder> {
  factory MalformedUnionInput(
          [void Function(MalformedUnionInputBuilder) updates]) =
      _$MalformedUnionInput;

  const MalformedUnionInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedUnionInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedUnionInputBuilder b) {}
  _i2.SimpleUnion? get union;
}

class _MalformedUnionInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedUnionInput> {
  const _MalformedUnionInputRestJson1Serializer()
      : super('MalformedUnionInput');

  @override
  Iterable<Type> get types =>
      const [MalformedUnionInput, _$MalformedUnionInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedUnionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedUnionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'union':
          if (value != null) {
            result.union = (serializers.deserialize(value,
                    specifiedType: const FullType(_i2.SimpleUnion))
                as _i2.SimpleUnion);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedUnionInput);
    final result = <Object?>[];
    if (payload.union != null) {
      result
        ..add('union')
        ..add(serializers.serialize(payload.union,
            specifiedType: const FullType.nullable(_i2.SimpleUnion)));
    }
    return result;
  }
}
