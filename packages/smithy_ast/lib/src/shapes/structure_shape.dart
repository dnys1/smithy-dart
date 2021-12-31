import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/collection_shape.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'structure_shape.g.dart';

abstract class StructureShape
    with HasNamedMembers
    implements Shape, Built<StructureShape, StructureShapeBuilder> {
  factory StructureShape([void Function(StructureShapeBuilder) updates]) =
      _$StructureShape;
  StructureShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructureShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.structure;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.structureShape(this);

  static Serializer<StructureShape> get serializer =>
      _$structureShapeSerializer;
}
