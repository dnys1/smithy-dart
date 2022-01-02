import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'string_shape.g.dart';

abstract class StringShape
    implements SimpleShape, Built<StringShape, StringShapeBuilder> {
  factory StringShape([void Function(StringShapeBuilder) updates]) =
      _$StringShape;
  StringShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StringShapeBuilder b) {
    b.shapeId = id;
    b.traits ??= TraitMap({});
  }

  static const id = ShapeId.core('String');

  @override
  ShapeType getType() => ShapeType.string;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.stringShape(this, parent);

  static Serializer<StringShape> get serializer => _$stringShapeSerializer;
}
