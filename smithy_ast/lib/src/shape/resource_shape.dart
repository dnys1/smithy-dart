import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/entity_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_ref.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'resource_shape.g.dart';

abstract class ResourceShape
    implements Shape, EntityShape, Built<ResourceShape, ResourceShapeBuilder> {
  factory ResourceShape([void Function(ResourceShapeBuilder) updates]) =
      _$ResourceShape;
  ResourceShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  BuiltMap<String, ShapeRef> get identifiers;
  ShapeRef get put;
  ShapeRef get create;
  ShapeRef get read;

  @BuiltValueField(wireName: 'update')
  ShapeRef get update_;

  ShapeRef get delete;
  ShapeRef get list;
  Set<ShapeRef> get collectionOperations;

  @override
  ShapeType get type => ShapeType.resource;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.resourceShape(this);

  static Serializer<ResourceShape> get serializer => _$resourceShapeSerializer;
}
