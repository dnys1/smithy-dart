import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_ref.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'operation_shape.g.dart';

abstract class OperationShape
    implements Shape, Built<OperationShape, OperationShapeBuilder> {
  factory OperationShape([void Function(OperationShapeBuilder) updates]) =
      _$OperationShape;
  OperationShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  ShapeRef? get input;
  ShapeRef? get output;
  BuiltList<ShapeRef> get errors;

  @override
  ShapeType getType() => ShapeType.operation;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.operationShape(this, parent);

  static Serializer<OperationShape> get serializer =>
      _$operationShapeSerializer;
}
