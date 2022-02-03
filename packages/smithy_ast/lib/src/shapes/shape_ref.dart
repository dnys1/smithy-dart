import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'shape_ref.g.dart';

abstract class ShapeRef implements Built<ShapeRef, ShapeRefBuilder> {
  factory ShapeRef([void Function(ShapeRefBuilder) updates]) = _$ShapeRef;
  ShapeRef._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ShapeRefBuilder b) {
    b.traits = TraitMap.empty();
  }

  TraitMap get traits;
  ShapeId get target;

  static Serializer<ShapeRef> get serializer => _$shapeRefSerializer;
}
