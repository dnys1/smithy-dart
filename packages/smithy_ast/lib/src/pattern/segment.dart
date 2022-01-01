import 'package:json_annotation/json_annotation.dart';

part 'segment.g.dart';

enum SegmentType {
  literal,
  label,
  greedyLabel,
}

@JsonSerializable()
class Segment {
  const Segment({
    required this.content,
    required this.type,
  });

  factory Segment.fromJson(Map<String, Object?> json) =>
      _$SegmentFromJson(json);

  final String content;

  @JsonKey(name: 'segmentType')
  final SegmentType type;

  String get asString {
    switch (type) {
      case SegmentType.literal:
        return content;
      case SegmentType.label:
        return '{$content}';
      case SegmentType.greedyLabel:
        return '{$content+}';
    }
  }

  bool get isLabel => type != SegmentType.literal;

  bool get isGreedyLabel => type != SegmentType.greedyLabel;

  Map<String, Object?> toJson() => _$SegmentToJson(this);
}
