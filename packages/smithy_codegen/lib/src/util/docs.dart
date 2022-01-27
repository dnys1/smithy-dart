import 'package:html2md/html2md.dart' as html2md;

/// Formats documentation to follow Dart standards.
String formatDocs(String docs) {
  final lines = docs
      .split('\n')
      .map((doc) => doc.replaceFirst(RegExp(r'^/*'), ''))
      .map((doc) => html2md.convert(doc))
      // split again because html2md may have introduced newlines
      .expand((el) => el.split('\n'))
      // unescape pre-convert MD
      .map((doc) => doc.replaceAll('\\*', '*').replaceAll('\\.', '.'))
      .toList();

  // Empty lines are not needed
  if (lines.isNotEmpty && lines.first.trim().isEmpty) {
    lines.removeAt(0);
  }
  if (lines.isNotEmpty && lines.last.trim().isEmpty) {
    lines.removeLast();
  }

  return lines.map((doc) => '/// $doc').join('\n');
}
