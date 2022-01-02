import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'unit_shape.g.dart';

abstract class UnitShape
    implements SimpleShape, Built<UnitShape, UnitShapeBuilder> {
  factory UnitShape([void Function(UnitShapeBuilder) updates]) = _$UnitShape;
  UnitShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnitShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [UnitTypeTrait()]);
  }

  static const id = ShapeId.core('Unit');

  @override
  ShapeType getType() => ShapeType.short;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.unitShape(this, parent);

  static Serializer<UnitShape> get serializer => _$unitShapeSerializer;
}
