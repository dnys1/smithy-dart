import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/serializers.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/traits/annotation_trait.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'box_trait.g.dart';

/// Indicates that a shape is boxed, meaning a value may or may not be present.
abstract class BoxTrait
    with SimpleTrait, AnnotationTrait
    implements Built<BoxTrait, BoxTraitBuilder> {
  factory BoxTrait([void Function(BoxTraitBuilder) updates]) = _$BoxTrait;
  BoxTrait._();

  static final id = ShapeId.parse('smithy.api#box');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BoxTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  @BuiltValueSerializer(custom: true)
  static Serializer<BoxTrait> get serializer =>
      AnnotationTraitSerializer(BoxTrait.new);
}
