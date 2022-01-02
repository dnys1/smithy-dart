import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'integer_shape.g.dart';

abstract class IntegerShape
    implements SimpleShape, Built<IntegerShape, IntegerShapeBuilder> {
  factory IntegerShape([void Function(IntegerShapeBuilder) updates]) =
      _$IntegerShape;
  IntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntegerShapeBuilder b) {
    b.shapeId = id;
    b.traits ??= TraitMap({});
  }

  static const id = ShapeId.core('Integer');

  @override
  ShapeType getType() => ShapeType.integer;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.integerShape(this, parent);

  static Serializer<IntegerShape> get serializer => _$integerShapeSerializer;
}
