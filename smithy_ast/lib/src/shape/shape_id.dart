import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/serializers.dart';

part 'shape_id.g.dart';

abstract class ShapeId implements Built<ShapeId, ShapeIdBuilder> {
  factory ShapeId([void Function(ShapeIdBuilder) updates]) = _$ShapeId;
  ShapeId._();

  factory ShapeId.parse(String id) => ShapeId(
        (b) => b
          ..namespace = id.split('#').first
          ..name = id.split('#')[1]
          ..member = id.contains('\$') ? id.split('\$').last : null,
      );

  static final ShapeId empty = ShapeId((b) => b
    ..namespace = ''
    ..name = '');

  String get namespace;
  String get name;
  String? get member;
  String get absoluteName =>
      '$namespace#$name' + (member == null ? '' : '\$$member');

  Map<String, Object?> toJson() {
    return serializers.serializeWith(ShapeId.serializer, this)
        as Map<String, Object?>;
  }

  static ShapeId fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(ShapeId.serializer, json) as ShapeId;
  }

  @BuiltValueSerializer(custom: true)
  static Serializer<ShapeId> get serializer => ShapeIdSerializer();
}

class ShapeIdSerializer extends PrimitiveSerializer<ShapeId> {
  @override
  ShapeId deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ShapeId.parse(serialized as String);
  }

  @override
  String serialize(Serializers serializers, ShapeId object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.absoluteName;
  }

  @override
  Iterable<Type> get types => [ShapeId];

  @override
  String get wireName => 'ShapeId';
}
