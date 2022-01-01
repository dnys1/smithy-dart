import 'package:collection/collection.dart';
import 'package:smithy_ast/src/pattern/segment.dart';

abstract class SmithyPattern {
  const SmithyPattern(this.pattern, this.segments);

  final String pattern;
  final List<Segment> segments;

  /// All segments that are labels.
  Iterable<Segment> get labels => segments.where((segment) => segment.isLabel);

  /// Gets the greedy label of the pattern, if present.
  Segment? get greedyLabel =>
      segments.firstWhereOrNull((segment) => segment.isGreedyLabel);

  /// Get a label by case-insensitive name.
  Segment? getLabel(String name) => segments.firstWhereOrNull(
        (segment) =>
            segment.isLabel &&
            segment.content.toLowerCase() == name.toLowerCase(),
      );
}
