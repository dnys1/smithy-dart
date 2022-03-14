import 'dart:convert';

import 'package:smithy/ast.dart';

/// Parses the AST JSON received as a string via stdin.
SmithyAst parseAstJson(String json) {
  return SmithyAst.fromJson(jsonDecode(json));
}
