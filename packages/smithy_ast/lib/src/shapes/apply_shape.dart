import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/serializers.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'apply_shape.g.dart';

abstract class ApplyShape
    implements Shape, Built<ApplyShape, ApplyShapeBuilder> {
  factory ApplyShape([void Function(ApplyShapeBuilder) updates]) = _$ApplyShape;
  ApplyShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApplyShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType getType() => ShapeType.apply;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => throw UnimplementedError();

  static Serializer<ApplyShape> get serializer => _$applyShapeSerializer;
}
