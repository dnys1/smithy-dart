import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'float_shape.g.dart';

abstract class FloatShape
    implements SimpleShape, Built<FloatShape, FloatShapeBuilder> {
  factory FloatShape([void Function(FloatShapeBuilder) updates]) = _$FloatShape;
  FloatShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FloatShapeBuilder b) {
    b.shapeId = id;
    b.traits ??= TraitMap({});
  }

  static const id = ShapeId.core('Float');

  @override
  ShapeType getType() => ShapeType.float;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.floatShape(this, parent);

  static Serializer<FloatShape> get serializer => _$floatShapeSerializer;
}
