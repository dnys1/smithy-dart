import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/entity_shape.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_ref.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'service_shape.g.dart';

abstract class ServiceShape
    implements Shape, EntityShape, Built<ServiceShape, ServiceShapeBuilder> {
  factory ServiceShape([void Function(ServiceShapeBuilder) updates]) =
      _$ServiceShape;
  ServiceShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  String? get version;
  BuiltMap<ShapeId, String> get rename;
  BuiltSet<ShapeRef> get errors;

  @override
  ShapeType getType() => ShapeType.service;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.serviceShape(this, parent);

  static Serializer<ServiceShape> get serializer => _$serviceShapeSerializer;
}
