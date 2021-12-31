import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'big_decimal_shape.g.dart';

abstract class BigDecimalShape
    implements Shape, Built<BigDecimalShape, BigDecimalShapeBuilder> {
  factory BigDecimalShape([void Function(BigDecimalShapeBuilder) updates]) =
      _$BigDecimalShape;
  BigDecimalShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigDecimalShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.bigDecimal;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.bigDecimalShape(this);

  static Serializer<BigDecimalShape> get serializer =>
      _$bigDecimalShapeSerializer;
}
