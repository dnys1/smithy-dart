import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'byte_shape.g.dart';

abstract class ByteShape implements Shape, Built<ByteShape, ByteShapeBuilder> {
  factory ByteShape([void Function(ByteShapeBuilder) updates]) = _$ByteShape;
  ByteShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ByteShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType get type => ShapeType.byte;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.byteShape(this);

  static Serializer<ByteShape> get serializer => _$byteShapeSerializer;
}
