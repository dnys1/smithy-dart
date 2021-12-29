import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'double_shape.g.dart';

abstract class DoubleShape
    implements Shape, Built<DoubleShape, DoubleShapeBuilder> {
  factory DoubleShape([void Function(DoubleShapeBuilder) updates]) =
      _$DoubleShape;
  DoubleShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DoubleShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.double;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.doubleShape(this);

  static Serializer<DoubleShape> get serializer => _$doubleShapeSerializer;
}
