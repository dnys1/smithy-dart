import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_ref.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'map_shape.g.dart';

abstract class MapShape implements Shape, Built<MapShape, MapShapeBuilder> {
  factory MapShape([void Function(MapShapeBuilder) updates]) = _$MapShape;
  MapShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  ShapeRef get key;
  ShapeRef get value;

  @override
  ShapeType get type => ShapeType.map;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.mapShape(this);

  static Serializer<MapShape> get serializer => _$mapShapeSerializer;
}
