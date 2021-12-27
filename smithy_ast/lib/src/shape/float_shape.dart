import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'float_shape.g.dart';

abstract class FloatShape
    implements Shape, Built<FloatShape, FloatShapeBuilder> {
  factory FloatShape([void Function(FloatShapeBuilder) updates]) = _$FloatShape;
  FloatShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FloatShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  @override
  ShapeType get type => ShapeType.float;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.floatShape(this);

  static Serializer<FloatShape> get serializer => _$floatShapeSerializer;
}
