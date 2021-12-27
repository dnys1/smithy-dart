import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/collection_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';

part 'structure_shape.g.dart';

abstract class StructureShape
    with HasNamedMembers
    implements Shape, Built<StructureShape, StructureShapeBuilder> {
  factory StructureShape([void Function(StructureShapeBuilder) updates]) =
      _$StructureShape;
  StructureShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructureShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType get type => ShapeType.structure;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.structureShape(this);

  static Serializer<StructureShape> get serializer =>
      _$structureShapeSerializer;
}
