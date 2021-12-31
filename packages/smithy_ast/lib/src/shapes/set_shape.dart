import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/collection_shape.dart';
import 'package:smithy_ast/src/shapes/member_shape.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'set_shape.g.dart';

abstract class SetShape
    implements CollectionShape, Built<SetShape, SetShapeBuilder> {
  factory SetShape([void Function(SetShapeBuilder) updates]) = _$SetShape;
  SetShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.set;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.setShape(this);

  static Serializer<SetShape> get serializer => _$setShapeSerializer;
}
