import 'package:dart_style/dart_style.dart';

/// Formats Dart source code.
///
/// This is a no-op on Web since `dart_style` (`analyzer`) is not supported.
String format(String source) {
  final formatter = DartFormatter(fixes: StyleFix.all);
  return formatter.format(source);
}
