import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/src/pattern/segment.dart';
import 'package:smithy_ast/src/pattern/smithy_pattern.dart';

part 'uri_pattern.g.dart';

@JsonSerializable()
class UriPattern extends SmithyPattern {
  UriPattern({
    required String pattern,
    required List<Segment> segments,
    required this.queryLiterals,
  }) : super(pattern, segments);

  factory UriPattern.fromJson(Map<String, Object?> json) =>
      _$UriPatternFromJson(json);

  final Map<String, String> queryLiterals;

  Map<String, Object?> toJson() => _$UriPatternToJson(this);
}
