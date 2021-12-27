import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'string_shape.g.dart';

abstract class StringShape
    implements Shape, Built<StringShape, StringShapeBuilder> {
  factory StringShape([void Function(StringShapeBuilder) updates]) =
      _$StringShape;
  StringShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StringShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  @override
  ShapeType get type => ShapeType.string;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.stringShape(this);

  static Serializer<StringShape> get serializer => _$stringShapeSerializer;
}
