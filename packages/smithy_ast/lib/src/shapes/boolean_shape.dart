import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'boolean_shape.g.dart';

abstract class BooleanShape
    implements Shape, Built<BooleanShape, BooleanShapeBuilder> {
  factory BooleanShape([void Function(BooleanShapeBuilder) updates]) =
      _$BooleanShape;
  BooleanShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BooleanShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.boolean;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.booleanShape(this);

  static Serializer<BooleanShape> get serializer => _$booleanShapeSerializer;
}
