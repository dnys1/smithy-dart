import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';

part 'big_integer_shape.g.dart';

abstract class BigIntegerShape
    implements Shape, Built<BigIntegerShape, BigIntegerShapeBuilder> {
  factory BigIntegerShape([void Function(BigIntegerShapeBuilder) updates]) =
      _$BigIntegerShape;
  BigIntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigIntegerShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.bigIntegerShape(this);

  static Serializer<BigIntegerShape> get serializer =>
      _$bigIntegerShapeSerializer;
}

extension BigIntegerShapeType on BigIntegerShape {
  ShapeType get type => ShapeType.bigInteger;
}
