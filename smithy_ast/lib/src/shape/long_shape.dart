import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'long_shape.g.dart';

abstract class LongShape implements Shape, Built<LongShape, LongShapeBuilder> {
  factory LongShape([void Function(LongShapeBuilder) updates]) = _$LongShape;
  LongShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LongShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  @override
  ShapeType get type => ShapeType.long;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.longShape(this);

  static Serializer<LongShape> get serializer => _$longShapeSerializer;
}
