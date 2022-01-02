import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'primitive_boolean_shape.g.dart';

abstract class PrimitiveBooleanShape
    implements
        SimpleShape,
        Built<PrimitiveBooleanShape, PrimitiveBooleanShapeBuilder> {
  factory PrimitiveBooleanShape(
          [void Function(PrimitiveBooleanShapeBuilder) updates]) =
      _$PrimitiveBooleanShape;
  PrimitiveBooleanShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveBooleanShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap({});
  }

  static const id = ShapeId.core('PrimitiveBoolean');

  @override
  ShapeType getType() => ShapeType.boolean;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveBooleanShape(this, parent);

  static Serializer<PrimitiveBooleanShape> get serializer =>
      _$primitiveBooleanShapeSerializer;
}
