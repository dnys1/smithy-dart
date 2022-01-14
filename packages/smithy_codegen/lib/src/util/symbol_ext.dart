import 'package:code_builder/code_builder.dart';

extension ExpressionUtil on Expression {
  /// The property getter, given [isNull].
  Expression nullableProperty(bool isNull, String name) {
    if (isNull) {
      return nullSafeProperty(name);
    } else {
      return property(name);
    }
  }
}

extension ReferenceHelpers on Reference {
  TypeReference get typeRef =>
      this is TypeReference ? this as TypeReference : type as TypeReference;

  /// Returns a nullable version of `this`.
  TypeReference get boxed {
    return typeRef.rebuild((t) => t.isNullable = true);
  }

  /// Returns a non-nullable version of `this`.
  TypeReference get unboxed {
    return typeRef.rebuild((t) => t.isNullable = false);
  }

  /// Returns a version of `this` with nullable set to [isBoxed].
  TypeReference withBoxed(bool isBoxed) {
    return isBoxed ? boxed : unboxed;
  }
}
