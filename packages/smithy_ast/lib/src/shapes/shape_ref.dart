import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';

part 'shape_ref.g.dart';

abstract class ShapeRef implements Built<ShapeRef, ShapeRefBuilder> {
  factory ShapeRef([void Function(ShapeRefBuilder) updates]) = _$ShapeRef;
  ShapeRef._();

  ShapeId get target;

  static Serializer<ShapeRef> get serializer => _$shapeRefSerializer;
}
