import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';
import 'package:smithy_ast/src/traits/trait.dart';

import 'shape_id.dart';
import 'shape_type.dart';

part 'shape.g.dart';

@BuiltValue(instantiable: false)
abstract class Shape {
  @BuiltValueField(serialize: false)
  ShapeId get shapeId;

  TraitMap get traits;
  ShapeType getType();

  R accept<R>(ShapeVisitor<R> visitor);

  Shape rebuild(void Function(ShapeBuilder) updates);
  ShapeBuilder toBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<Shape> get serializer => ShapeSerializer();
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
      specifiedType: FullType(object.getType().type),
    ) as Map<String, Object?>;
    map['type'] = object.getType().name;
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
