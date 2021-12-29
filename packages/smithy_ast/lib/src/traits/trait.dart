import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/traits/auth_definition_trait.dart';
import 'package:smithy_ast/src/traits/auth_trait.dart';
import 'package:smithy_ast/src/traits/box_trait.dart';
import 'package:smithy_ast/src/traits/cors_trait.dart';
import 'package:smithy_ast/src/traits/deprecated_trait.dart';
import 'package:smithy_ast/src/traits/documentation_trait.dart';
import 'package:smithy_ast/src/traits/required_trait.dart';

part 'trait.g.dart';

/// Traits provide additional context and semantics to shapes.
///
/// A trait complements a [Shape] by providing additional information to help
/// correctly interpret any specific representation of it or to add information
/// about constraints on the logical structure of the [Shape].
@BuiltValue(instantiable: false)
abstract class Trait {
  static final serializers = <ShapeId, Serializer<Trait>>{
    AuthDefinitionTrait.id: AuthDefinitionTrait.serializer,
    AuthTrait.id: AuthTrait.serializer,
    BoxTrait.id: BoxTrait.serializer,
    CorsTrait.id: CorsTrait.serializer,
    DeprecatedTrait.id: DeprecatedTrait.serializer,
    DocumentationTrait.id: DocumentationTrait.serializer,
    RequiredTrait.id: RequiredTrait.serializer,
  };

  /// Returns the fully-qualified shape ID of the trait.
  ShapeId getShapeId();

  /// Checks if this trait is persisted with the shape, or if it is a synthetic,
  /// or transient trait, only meant to temporarily aid in some kind of
  /// in-memory model transformation.
  ///
  /// Because synthetic traits are not persisted with shapes, they also do not
  /// need to be defined in Smithy's semantic model before they can be used in
  /// the model.
  bool get isSynthetic;
}

abstract class SimpleTrait implements Trait {
  /// Returns the trait value (may be `null`).
  Object? get value => null;
}

extension TraitHelpers on Trait {
  /// The absolute name (shape ID) of this trait.
  String get name => getShapeId().absoluteName;

  /// Gets the idiomatic name of a prelude trait by stripping off the
  /// `smithy.api#` prefix. This is used in various error messages.
  @internal
  String get idiomaticName => name.replaceFirst('smithy.api#', '');
}
