import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

class TraitMap extends DelegatingMap<ShapeId, Trait> {
  const TraitMap(Map<ShapeId, Trait> traits) : super(traits);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is TraitMap && const MapEquality().equals(this, other);

  @override
  int get hashCode => const MapEquality().hash(this);
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
