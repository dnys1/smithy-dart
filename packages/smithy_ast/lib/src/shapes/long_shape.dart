import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'long_shape.g.dart';

abstract class LongShape
    implements SimpleShape, Built<LongShape, LongShapeBuilder> {
  factory LongShape([void Function(LongShapeBuilder) updates]) = _$LongShape;
  LongShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LongShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [BoxTrait()]);
  }

  static const id = ShapeId.core('Long');

  @override
  ShapeType getType() => ShapeType.long;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.longShape(this, parent);

  static Serializer<LongShape> get serializer => _$longShapeSerializer;
}
