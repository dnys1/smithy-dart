import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'enum_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class EnumTrait with AWSSerializable implements Trait<EnumTrait> {
  const EnumTrait({
    required this.definitions,
  });

  factory EnumTrait.fromJson(Object? json) =>
      _$EnumTraitFromJson((json as Map).cast());

  static final id = ShapeId.parse('smithy.api#enum');

  final List<EnumDefinition> definitions;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        definitions,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$EnumTraitToJson(this);

  @override
  EnumTrait get value => this;
}
