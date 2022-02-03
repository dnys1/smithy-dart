// GENERATED CODE - DO NOT MODIFY BY HAND

part of structure_generator.test.model.type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestType extends TestType {
  factory _$TestType([void Function(TestTypeBuilder)? updates]) =>
      (new TestTypeBuilder()..update(updates)).build();

  _$TestType._() : super._();

  @override
  TestType rebuild(void Function(TestTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestTypeBuilder toBuilder() => new TestTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestType;
  }

  @override
  int get hashCode {
    return 21228956;
  }
}

class TestTypeBuilder implements Builder<TestType, TestTypeBuilder> {
  _$TestType? _$v;

  TestTypeBuilder() {
    TestType._init(this);
  }

  @override
  void replace(TestType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestType;
  }

  @override
  void update(void Function(TestTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TestType build() {
    final _$result = _$v ?? new _$TestType._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
