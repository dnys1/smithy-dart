import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/serializers.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';

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
  R accept<R>(ShapeVisitor<R> visitor) => throw UnimplementedError();

  Map<String, Object?> toJson() {
    return serializers.serializeWith(ApplyShape.serializer, this)
        as Map<String, Object?>;
  }

  static ApplyShape fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(ApplyShape.serializer, json)
        as ApplyShape;
  }

  static Serializer<ApplyShape> get serializer => _$applyShapeSerializer;
}
