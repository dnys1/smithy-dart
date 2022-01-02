import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

class TraitMap extends DelegatingMap<ShapeId, Trait> {
  const TraitMap(Map<ShapeId, Trait> traits) : super(traits);

  /// Creates a [TraitMap] from [traits].
  factory TraitMap.fromTraits(Iterable<Trait> traits) =>
      TraitMap({for (var trait in traits) trait.shapeId: trait});

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
    final traitMap = TraitMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final shapeId = serializers.deserializeWith(
          ShapeId.serializer, iterator.current as String) as ShapeId;
      iterator.moveNext();
      final Object? value = iterator.current;
      traitMap[shapeId] = Trait.fromJson(shapeId, value!);
    }
    return traitMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, TraitMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      yield entry.key.absoluteName;
      yield entry.value.toJson();
    }
  }

  @override
  Iterable<Type> get types => [TraitMap];

  @override
  String get wireName => 'TraitMap';
}
