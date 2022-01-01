import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'protocol_definition_trait.g.dart';

/// A trait that is attached to other traits to define a Smithy protocol.
@ShapeIdConverter()
@JsonSerializable()
class ProtocolDefinitionTrait implements Trait<ProtocolDefinitionTrait> {
  const ProtocolDefinitionTrait({
    required this.traits,
    required this.noInlineDocumentSupport,
  });

  factory ProtocolDefinitionTrait.fromJson(Object? json) =>
      _$ProtocolDefinitionTraitFromJson((json as Map).cast());

  static const id = ShapeId.core('protocolDefinition');

  final List<ShapeId> traits;
  final bool noInlineDocumentSupport;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [traits, noInlineDocumentSupport];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ProtocolDefinitionTraitToJson(this);

  @override
  ProtocolDefinitionTrait get value => this;
}
