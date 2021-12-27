import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_ref.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'operation_shape.g.dart';

abstract class OperationShape
    implements Shape, Built<OperationShape, OperationShapeBuilder> {
  factory OperationShape([void Function(OperationShapeBuilder) updates]) =
      _$OperationShape;
  OperationShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  ShapeRef? get input;
  ShapeRef? get output;
  BuiltList<ShapeRef> get errors;

  @override
  ShapeType get type => ShapeType.operation;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.operationShape(this);

  static Serializer<OperationShape> get serializer =>
      _$operationShapeSerializer;
}
