import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/collection_shape.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'union_shape.g.dart';

abstract class UnionShape
    with HasNamedMembers
    implements Shape, Built<UnionShape, UnionShapeBuilder> {
  factory UnionShape([void Function(UnionShapeBuilder) updates]) = _$UnionShape;
  UnionShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType get type => ShapeType.union;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.unionShape(this);

  static Serializer<UnionShape> get serializer => _$unionShapeSerializer;
}
