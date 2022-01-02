import 'package:collection/collection.dart';
import 'package:smithy_ast/smithy_ast.dart';

/// Adds functionality to track renaming of shapes in recursive visiting.
mixin RenameState {
  final Map<ShapeId, List<String>> _states = {};

  /// Returns the current rename for [shapeId].
  String? renameFor(ShapeId shapeId) => _states[shapeId]?.lastOrNull;

  /// Sets the rename for [key] to [value].
  void pushState(ShapeId key, String value) {
    _states[key] ??= [];
    _states[key]!.add(value);
  }

  /// Undoes the last rename of [key].
  void popState(ShapeId key) {
    _states[key]!.removeLast();
  }

  /// Performs [fn] with [key]'s rename set to [value].
  R withState<R>(ShapeId key, String value, R Function() fn) {
    try {
      pushState(key, value);
      return fn();
    } finally {
      popState(key);
    }
  }
}
