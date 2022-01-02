import 'package:collection/collection.dart';
import 'package:smithy_ast/smithy_ast.dart';

/// Adds functionality to track renaming of shapes in recursive visiting.
mixin RenameState {
  final Map<ShapeId, List<String>> _states = {};

  String? renameFor(ShapeId shapeId) => _states[shapeId]?.lastOrNull;

  void pushState(ShapeId key, String value) {
    _states[key] ??= [];
    _states[key]!.add(value);
  }

  void popState(ShapeId key) {
    _states[key]!.removeLast();
  }

  R withState<R>(ShapeId key, String value, R Function() fn) {
    try {
      pushState(key, value);
      return fn();
    } finally {
      popState(key);
    }
  }
}
