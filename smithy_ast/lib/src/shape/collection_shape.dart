import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';

abstract class HasNamedMembers {
  NamedMembersMap get members;
  Iterable<String> get memberNames => members.keys;
}

class NamedMembersMap extends DelegatingMap<String, MemberShape> {
  const NamedMembersMap(Map<String, MemberShape> members) : super(members);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is NamedMembersMap && const MapEquality().equals(this, other);

  @override
  int get hashCode => const MapEquality().hash(this);
}

class NamedMembersMapSerializer extends StructuredSerializer<NamedMembersMap> {
  @override
  NamedMembersMap deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final membersMap = NamedMembersMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final memberName = iterator.current as String;
      final shapeId = ShapeId.empty.rebuild((b) => b.member = memberName);
      iterator.moveNext();
      final Object? value = iterator.current;
      membersMap[memberName] = serializers
          .deserializeWith(
              MemberShape.serializer,
              StandardJsonPlugin()
                  .beforeDeserialize(value, FullType(MemberShape)))!
          .rebuild((b) => b
            ..shapeId.replace(shapeId)
            ..memberName = memberName);
    }
    return membersMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, NamedMembersMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      yield entry.key;
      yield serializers.serializeWith(Shape.serializer, entry.value);
    }
  }

  @override
  Iterable<Type> get types => [NamedMembersMap];

  @override
  String get wireName => 'NamedMembersMap';
}

abstract class HasMembers implements CollectionShape {
  BuiltList<MemberShape> get members => BuiltList([member]);
}

/// Abstract class representing Set and List shapes.
abstract class CollectionShape implements Shape {
  MemberShape get member;
}
