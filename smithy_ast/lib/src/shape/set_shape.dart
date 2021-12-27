import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/collection_shape.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'set_shape.g.dart';

abstract class SetShape
    implements Shape, CollectionShape, Built<SetShape, SetShapeBuilder> {
  factory SetShape([void Function(SetShapeBuilder) updates]) = _$SetShape;
  SetShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  @override
  ShapeType get type => ShapeType.set;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.setShape(this);

  static Serializer<SetShape> get serializer => _$setShapeSerializer;
}
