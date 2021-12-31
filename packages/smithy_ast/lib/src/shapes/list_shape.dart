import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/member_shape.dart';
import 'package:smithy_ast/src/shapes/collection_shape.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'list_shape.g.dart';

abstract class ListShape
    implements CollectionShape, Built<ListShape, ListShapeBuilder> {
  factory ListShape([void Function(ListShapeBuilder) updates]) = _$ListShape;
  ListShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.list;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.listShape(this);

  static Serializer<ListShape> get serializer => _$listShapeSerializer;
}
