// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.structure_list_member;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'structure_list_member.g.dart';

abstract class StructureListMember
    implements Built<StructureListMember, StructureListMemberBuilder> {
  factory StructureListMember(
          [void Function(StructureListMemberBuilder) updates]) =
      _$StructureListMember;

  const StructureListMember._();

  static const List<_i1.SmithySerializer> serializers = [
    _StructureListMemberRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructureListMemberBuilder b) {}
  String? get a;
  String? get b;
}

class _StructureListMemberRestJson1Serializer
    extends _i1.StructuredSmithySerializer<StructureListMember> {
  const _StructureListMemberRestJson1Serializer()
      : super('StructureListMember');

  @override
  Iterable<Type> get types =>
      const [StructureListMember, _$StructureListMember];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  StructureListMember deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = StructureListMemberBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          if (value != null) {
            result.a = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'other':
          if (value != null) {
            result.b = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as StructureListMember);
    final result = <Object?>[];
    if (payload.a != null) {
      result
        ..add('value')
        ..add(serializers.serialize(payload.a,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.b != null) {
      result
        ..add('other')
        ..add(serializers.serialize(payload.b,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
