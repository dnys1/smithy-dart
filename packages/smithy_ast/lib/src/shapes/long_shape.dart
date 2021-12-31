import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'long_shape.g.dart';

abstract class LongShape implements Shape, Built<LongShape, LongShapeBuilder> {
  factory LongShape([void Function(LongShapeBuilder) updates]) = _$LongShape;
  LongShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LongShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.long;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.longShape(this);

  static Serializer<LongShape> get serializer => _$longShapeSerializer;
}
