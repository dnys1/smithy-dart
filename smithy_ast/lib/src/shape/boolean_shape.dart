import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'boolean_shape.g.dart';

abstract class BooleanShape
    implements Shape, Built<BooleanShape, BooleanShapeBuilder> {
  factory BooleanShape([void Function(BooleanShapeBuilder) updates]) =
      _$BooleanShape;
  BooleanShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BooleanShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  @override
  ShapeType get type => ShapeType.boolean;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.booleanShape(this);

  static Serializer<BooleanShape> get serializer => _$booleanShapeSerializer;
}
