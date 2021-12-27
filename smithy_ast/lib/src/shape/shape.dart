import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

import 'shape_id.dart';
import 'shape_type.dart';

class TraitMap extends DelegatingMap<ShapeId, Trait> {
  const TraitMap(Map<ShapeId, Trait> traits) : super(traits);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is TraitMap && const MapEquality().equals(this, other);

  @override
  int get hashCode => const MapEquality().hash(this);
}

@BuiltValue(instantiable: false)
abstract class Shape {
  @BuiltValueField(serialize: false)
  ShapeId get shapeId;

  TraitMap get traits;
  ShapeType get type;

  R accept<R>(ShapeVisitor<R> visitor);

  Shape rebuild(void Function(ShapeBuilder) updates);
  ShapeBuilder toBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<Shape> get serializer => ShapeSerializer();
}

class TraitMapSerializer extends StructuredSerializer<TraitMap> {
  @override
  TraitMap deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final shapeMap = TraitMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final shapeId = serializers.deserializeWith(
          ShapeId.serializer, iterator.current as String) as ShapeId;
      iterator.moveNext();
      final Object? value = iterator.current;
      shapeMap[shapeId] =
          serializers.deserializeWith(Trait.serializers[shapeId]!, value)!;
    }
    return shapeMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, TraitMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      final shapeId = entry.key;
      yield shapeId.absoluteName;
      yield serializers.serializeWith(Trait.serializers[shapeId]!, entry.value);
    }
  }

  @override
  Iterable<Type> get types => [TraitMap];

  @override
  String get wireName => 'TraitMap';
}

abstract class ShapeBuilder {
  void replace(Shape other);
  void update(void Function(ShapeBuilder) updates);

  ShapeIdBuilder get shapeId;
  set shapeId(ShapeIdBuilder shapeId);

  TraitMap? get traits;
  set traits(TraitMap? traits);
}

extension ShapeUtils on Shape {
  /// Whether the shape has a trait of type [T].
  bool hasTrait<T extends Trait>() => traits.values.any((t) => t is T);

  /// Gets the trait of type [T] from the shape or throws if not found.
  T expectTrait<T extends Trait>() =>
      traits.values.firstWhere((t) => t is T) as T;
}

class ShapeSerializer extends StructuredSerializer<Shape> {
  @override
  Shape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      if (key == 'type') {
        final type = ShapeType.valueOf(value as String);
        return serializers.deserialize(
          serialized,
          specifiedType: FullType(type.type),
        ) as Shape;
      }
    }
    throw ArgumentError('Unknown shape type');
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Shape object,
      {FullType specifiedType = FullType.unspecified}) {
    final map = serializers.serialize(
      object,
      specifiedType: FullType(object.type.type),
    ) as Map<String, Object?>;
    map['type'] = object.type.name;
    map.removeWhere((key, value) =>
        value == null ||
        (value is Map && value.isEmpty) ||
        (value is List && value.isEmpty));
    return map.entries.expand((entry) => [
          entry.key,
          entry.value,
        ]);
  }

  @override
  Iterable<Type> get types => [Shape];

  @override
  String get wireName => 'Shape';
}
