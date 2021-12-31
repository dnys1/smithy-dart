import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'auth_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class AuthTrait with AWSSerializable implements Trait<AuthTrait> {
  const AuthTrait(this.values);

  factory AuthTrait.fromJson(Object? json) =>
      _$AuthTraitFromJson((json as Map).cast());

  static final id = ShapeId.parse('smithy.api#auth');

  final Set<ShapeId> values;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [values];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$AuthTraitToJson(this);

  @override
  AuthTrait get value => this;
}
