import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'big_integer_shape.g.dart';

abstract class BigIntegerShape
    implements Shape, Built<BigIntegerShape, BigIntegerShapeBuilder> {
  factory BigIntegerShape([void Function(BigIntegerShapeBuilder) updates]) =
      _$BigIntegerShape;
  BigIntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigIntegerShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.bigInteger;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.bigIntegerShape(this);

  static Serializer<BigIntegerShape> get serializer =>
      _$bigIntegerShapeSerializer;
}
