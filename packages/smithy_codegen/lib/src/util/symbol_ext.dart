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
