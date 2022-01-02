import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/collection_shape.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'union_shape.g.dart';

abstract class UnionShape
    implements NamedMembersShape, Built<UnionShape, UnionShapeBuilder> {
  factory UnionShape([void Function(UnionShapeBuilder) updates]) = _$UnionShape;
  UnionShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.union;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.unionShape(this, parent);

  static Serializer<UnionShape> get serializer => _$unionShapeSerializer;
}
