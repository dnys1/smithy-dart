import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'auth_trait.g.dart';

/// Specifies the auth schemes supported by default for operations bound to a
/// service.
abstract class AuthTrait implements Trait, Built<AuthTrait, AuthTraitBuilder> {
  factory AuthTrait([void Function(AuthTraitBuilder) updates]) = _$AuthTrait;
  AuthTrait._();

  static final id = ShapeId.parse('smithy.api#auth');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  /// The auth scheme trait values.
  BuiltSet<ShapeId> get values;

  static Serializer<AuthTrait> get serializer => _$authTraitSerializer;
}
