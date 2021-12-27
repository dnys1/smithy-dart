import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/traits/annotation_trait.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'auth_definition_trait.g.dart';

/// This trait is attached to another trait to define an auth scheme.
abstract class AuthDefinitionTrait
    with SimpleTrait, AnnotationTrait
    implements Built<AuthDefinitionTrait, AuthDefinitionTraitBuilder> {
  factory AuthDefinitionTrait(
          [void Function(AuthDefinitionTraitBuilder) updates]) =
      _$AuthDefinitionTrait;
  AuthDefinitionTrait._();

  static final id = ShapeId.parse('smithy.api#authDefinition');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthDefinitionTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  /// The list of shape IDs that auth implementations must know about in order
  /// to successfully utilize the auth scheme.
  BuiltList<Trait> get traits;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthDefinitionTrait> get serializer =>
      AnnotationTraitSerializer(AuthDefinitionTrait.new);
}
