import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'short_shape.g.dart';

abstract class ShortShape
    implements Shape, Built<ShortShape, ShortShapeBuilder> {
  factory ShortShape([void Function(ShortShapeBuilder) updates]) = _$ShortShape;
  ShortShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ShortShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.short;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.shortShape(this);

  static Serializer<ShortShape> get serializer => _$shortShapeSerializer;
}
