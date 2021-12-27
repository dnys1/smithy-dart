import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/traits/annotation_trait.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'required_trait.g.dart';

abstract class RequiredTrait
    with SimpleTrait, AnnotationTrait
    implements Built<RequiredTrait, RequiredTraitBuilder> {
  factory RequiredTrait([void Function(RequiredTraitBuilder) updates]) =
      _$RequiredTrait;
  RequiredTrait._();

  static final id = ShapeId.parse('smithy.api#required');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequiredTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  @BuiltValueSerializer(custom: true)
  static Serializer<RequiredTrait> get serializer =>
      AnnotationTraitSerializer(RequiredTrait.new);
}
