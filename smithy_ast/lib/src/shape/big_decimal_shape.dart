import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';

part 'big_decimal_shape.g.dart';

abstract class BigDecimalShape
    implements Shape, Built<BigDecimalShape, BigDecimalShapeBuilder> {
  factory BigDecimalShape([void Function(BigDecimalShapeBuilder) updates]) =
      _$BigDecimalShape;
  BigDecimalShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigDecimalShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.bigDecimalShape(this);

  static Serializer<BigDecimalShape> get serializer =>
      _$bigDecimalShapeSerializer;
}

extension BigDecimalShapeType on BigDecimalShape {
  ShapeType get type => ShapeType.bigDecimal;
}
