import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'deprecated_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class DeprecatedTrait with AWSSerializable implements Trait<DeprecatedTrait> {
  const DeprecatedTrait({
    this.since,
    this.message,
  });

  factory DeprecatedTrait.fromJson(Object? json) =>
      _$DeprecatedTraitFromJson((json as Map).cast());

  static final id = ShapeId.parse('smithy.api#deprecated');

  final String? since;
  final String? message;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        since,
        message,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$DeprecatedTraitToJson(this);

  @override
  DeprecatedTrait get value => this;
}
