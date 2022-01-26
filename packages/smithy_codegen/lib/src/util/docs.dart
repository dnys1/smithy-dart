import 'package:html2md/html2md.dart' as html2md;

/// Formats documentation to follow Dart standards.
String formatDocs(String docs) => docs
    .split('\n')
    .map((doc) => html2md.convert(doc.replaceFirst(RegExp(r'^/*'), '')))
    .map(
      // unescape pre-convert MD
      (doc) => '/// ${doc.replaceAll('\\*', '*').replaceAll('\\.', '.')}',
    )
    .join('\n');
