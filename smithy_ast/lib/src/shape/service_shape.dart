import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/entity_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_ref.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';

part 'service_shape.g.dart';

abstract class ServiceShape
    implements Shape, EntityShape, Built<ServiceShape, ServiceShapeBuilder> {
  factory ServiceShape([void Function(ServiceShapeBuilder) updates]) =
      _$ServiceShape;
  ServiceShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  String? get version;
  BuiltMap<ShapeId, String> get rename;
  BuiltSet<ShapeRef> get errors;

  @override
  ShapeType get type => ShapeType.service;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.serviceShape(this);

  static Serializer<ServiceShape> get serializer => _$serviceShapeSerializer;
}
