import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/src/generator/types.dart';

extension ExpressionUtil on Expression {
  /// The property getter, given [isNull].
  Expression nullableProperty(bool isNull, String name) {
    if (isNull) {
      return nullSafeProperty(name);
    } else {
      return property(name);
    }
  }

  Expression wrapWithInlineNullCheck(Expression check) {
    return check.equalTo(literalNull).conditional(literalNull, nullChecked);
  }

  Code wrapWithBlockNullCheck(Expression check, bool isNullable) {
    return Block.of([
      if (isNullable) ...[
        const Code('if ('),
        check.notEqualTo(literalNull).code,
        const Code(') {'),
      ],
      isNullable ? nullChecked.statement : statement,
      if (isNullable) const Code('}')
    ]);
  }
}

extension CodeHelpers on Code {
  Code wrapWithBlockNullCheck(Expression check, bool isNullable) {
    return Block.of([
      if (isNullable) ...[
        const Code('if ('),
        check.notEqualTo(literalNull).code,
        const Code(') {'),
      ],
      this,
      if (isNullable) const Code('}')
    ]);
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

  /// Constructs a `built_value` FullType reference for this.
  Expression get fullType {
    final typeRef = this.typeRef;
    final ctor = typeRef.isNullable ?? false
        ? (args) =>
            DartTypes.builtValue.fullType.constInstanceNamed('nullable', args)
        : DartTypes.builtValue.fullType.constInstance;
    if (typeRef.types.isEmpty) {
      return ctor([typeRef.unboxed]);
    }
    return ctor([
      typeRef.rebuild((t) => t.types.clear()).unboxed,
      literalList(typeRef.types.map((t) => t.fullType)),
    ]);
  }
}
