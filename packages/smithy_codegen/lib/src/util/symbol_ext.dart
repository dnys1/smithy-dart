import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/src/generator/types.dart';

extension ExpressionUtil on Expression {
  /// The property getter, given [isNullable].
  Expression nullableProperty(String name, bool isNullable) {
    if (isNullable) {
      return nullSafeProperty(name);
    } else {
      return property(name);
    }
  }

  Expression wrapWithInlineNullCheck(Expression check) {
    return check.equalTo(literalNull).conditional(literalNull, nullChecked);
  }

  Code wrapWithBlockNullCheck(Expression check, bool isNullable) {
    return isNullable
        ? nullChecked.wrapWithBlockIf(check, isNullable)
        : wrapWithBlockIf(check, isNullable);
  }

  Code wrapWithBlockIf(Expression check, [bool performCheck = true]) {
    return Block.of([
      if (performCheck) ...[
        const Code('if ('),
        check.code,
        const Code(') {'),
      ],
      statement,
      if (performCheck) const Code('}')
    ]);
  }
}

extension CodeHelpers on Code {
  Code wrapWithBlockIf(Expression check, [bool performCheck = true]) {
    return Block.of([
      if (performCheck) ...[
        const Code('if ('),
        check.code,
        const Code(') {'),
      ],
      this,
      if (performCheck) const Code('}')
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
  Expression fullType([Iterable<Reference>? parameters]) {
    final typeRef = this.typeRef;
    final ctor = typeRef.isNullable ?? false
        ? (args) =>
            DartTypes.builtValue.fullType.constInstanceNamed('nullable', args)
        : DartTypes.builtValue.fullType.constInstance;
    if (typeRef.types.isEmpty && (parameters == null || parameters.isEmpty)) {
      return ctor([typeRef.unboxed]);
    }
    return ctor([
      typeRef.rebuild((t) => t.types.clear()).unboxed,
      literalList(
        parameters?.map((param) => param.fullType()) ??
            typeRef.types.map((t) => t.fullType()),
      ),
    ]);
  }
}
