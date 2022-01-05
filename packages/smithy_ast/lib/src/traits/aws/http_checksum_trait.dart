import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'http_checksum_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class HttpChecksumTrait
    with AWSSerializable
    implements Trait<HttpChecksumTrait> {
  const HttpChecksumTrait({
    required this.requestChecksumRequired,
    this.requestAlgorithmMember,
    this.requestValidationModeMember,
    this.responseAlgorithms = const [],
  });

  factory HttpChecksumTrait.fromJson(Object? json) =>
      _$HttpChecksumTraitFromJson((json as Map).cast());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'httpChecksum');

  final bool requestChecksumRequired;
  final String? requestAlgorithmMember;
  final String? requestValidationModeMember;
  final List<String> responseAlgorithms;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        requestChecksumRequired,
        requestAlgorithmMember,
        requestValidationModeMember,
        responseAlgorithms,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpChecksumTraitToJson(this);

  @override
  HttpChecksumTrait get value => this;
}
