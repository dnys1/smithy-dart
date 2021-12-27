import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'integer_shape.g.dart';

abstract class IntegerShape
    implements Shape, Built<IntegerShape, IntegerShapeBuilder> {
  factory IntegerShape([void Function(IntegerShapeBuilder) updates]) =
      _$IntegerShape;
  IntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntegerShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType get type => ShapeType.integer;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.integerShape(this);

  static Serializer<IntegerShape> get serializer => _$integerShapeSerializer;
}
