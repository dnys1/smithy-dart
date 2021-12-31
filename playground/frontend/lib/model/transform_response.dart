import 'package:json_annotation/json_annotation.dart';

part 'transform_response.g.dart';

@JsonSerializable()
class TransformResponse {
  const TransformResponse({
    required this.ast,
    required this.errors,
  });

  factory TransformResponse.fromJson(Map<String, Object?> json) =>
      _$TransformResponseFromJson(json);

  final String ast;
  final String errors;

  Map<String, Object?> toJson() => _$TransformResponseToJson(this);
}
