import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_ast/src/traits/external_documentation_trait.dart';
import 'package:smithy_ast/src/traits/host_label_trait.dart';
import 'package:smithy_ast/src/traits/http/http_api_key_auth_trait.dart';

typedef TraitConstructor<TraitValue extends Object, T extends Trait<TraitValue>>
    = T Function(Object?);

/// Traits provide additional context and semantics to shapes.
///
/// A trait complements a [Shape] by providing additional information to help
/// correctly interpret any specific representation of it or to add information
/// about constraints on the logical structure of the [Shape].
abstract class Trait<TraitValue extends Object>
    with AWSEquatable<Trait<TraitValue>>, AWSSerializable {
  const Trait(this.shapeId, this.value);

  static Trait fromJson(ShapeId shapeId, Object? jsonValue) {
    if (!serializers.containsKey(shapeId)) {
      throw ArgumentError('No serializer found for $shapeId');
    }
    return serializers[shapeId]!(jsonValue);
  }

  /// Returns the fully-qualified shape ID of the trait.
  final ShapeId shapeId;

  /// The value of the trait.
  final TraitValue value;

  /// Checks if this trait is persisted with the shape, or if it is a synthetic,
  /// or transient trait, only meant to temporarily aid in some kind of
  /// in-memory model transformation.
  ///
  /// Because synthetic traits are not persisted with shapes, they also do not
  /// need to be defined in Smithy's semantic model before they can be used in
  /// the model.
  bool get isSynthetic => false;

  @override
  Object toJson() =>
      value is AWSSerializable ? (value as AWSSerializable).toJson() : value;

  @override
  List<Object?> get props => [shapeId, value, isSynthetic];

  static final Map<ShapeId, TraitConstructor> serializers = {
    AuthDefinitionTrait.id: AuthDefinitionTrait.fromJson,
    AuthTrait.id: AuthTrait.fromJson,
    BoxTrait.id: BoxTrait.fromJson,
    CorsTrait.id: CorsTrait.fromJson,
    DeprecatedTrait.id: DeprecatedTrait.fromJson,
    DocumentationTrait.id: DocumentationTrait.fromJson,
    EndpointTrait.id: EndpointTrait.fromJson,
    EnumTrait.id: EnumTrait.fromJson,
    ErrorTrait.id: ErrorTrait.fromJson,
    EventHeaderTrait.id: EventHeaderTrait.fromJson,
    EventPayloadTrait.id: EventPayloadTrait.fromJson,
    ExamplesTrait.id: ExamplesTrait.fromJson,
    ExternalDocumentationTrait.id: ExternalDocumentationTrait.fromJson,
    HostLabelTrait.id: HostLabelTrait.fromJson,
    HttpApiKeyAuthTrait.id: HttpApiKeyAuthTrait.fromJson,
    RequiredTrait.id: RequiredTrait.fromJson,
  };
}

extension TraitHelpers on Trait {
  /// The absolute name (shape ID) of this trait.
  String get name => shapeId.absoluteName;

  /// Gets the idiomatic name of a prelude trait by stripping off the
  /// `smithy.api#` prefix. This is used in various error messages.
  @internal
  String get idiomaticName => name.replaceFirst('smithy.api#', '');
}
