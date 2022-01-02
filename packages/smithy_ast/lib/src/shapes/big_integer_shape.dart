import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'big_integer_shape.g.dart';

abstract class BigIntegerShape
    implements SimpleShape, Built<BigIntegerShape, BigIntegerShapeBuilder> {
  factory BigIntegerShape([void Function(BigIntegerShapeBuilder) updates]) =
      _$BigIntegerShape;
  BigIntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigIntegerShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('BigInteger');

  @override
  ShapeType getType() => ShapeType.bigInteger;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.bigIntegerShape(this, parent);

  static Serializer<BigIntegerShape> get serializer =>
      _$bigIntegerShapeSerializer;
}
