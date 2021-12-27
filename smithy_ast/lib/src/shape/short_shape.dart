import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'short_shape.g.dart';

abstract class ShortShape
    implements Shape, Built<ShortShape, ShortShapeBuilder> {
  factory ShortShape([void Function(ShortShapeBuilder) updates]) = _$ShortShape;
  ShortShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ShortShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType get type => ShapeType.short;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.shortShape(this);

  static Serializer<ShortShape> get serializer => _$shortShapeSerializer;
}
