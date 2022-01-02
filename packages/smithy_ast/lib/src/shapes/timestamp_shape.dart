import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'timestamp_shape.g.dart';

abstract class TimestampShape
    implements SimpleShape, Built<TimestampShape, TimestampShapeBuilder> {
  factory TimestampShape([void Function(TimestampShapeBuilder) updates]) =
      _$TimestampShape;
  TimestampShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimestampShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('Timestamp');

  @override
  ShapeType getType() => ShapeType.timestamp;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.timestampShape(this, parent);

  static Serializer<TimestampShape> get serializer =>
      _$timestampShapeSerializer;
}
