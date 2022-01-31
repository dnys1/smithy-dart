// GENERATED CODE - DO NOT MODIFY BY HAND

part of structure_generator.test.model.image;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestImage extends TestImage {
  factory _$TestImage([void Function(TestImageBuilder)? updates]) =>
      (new TestImageBuilder()..update(updates)).build();

  _$TestImage._() : super._();

  @override
  TestImage rebuild(void Function(TestImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestImageBuilder toBuilder() => new TestImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestImage;
  }

  @override
  int get hashCode {
    return 36036460;
  }
}

class TestImageBuilder implements Builder<TestImage, TestImageBuilder> {
  _$TestImage? _$v;

  TestImageBuilder() {
    TestImage._init(this);
  }

  @override
  void replace(TestImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestImage;
  }

  @override
  void update(void Function(TestImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TestImage build() {
    final _$result = _$v ?? new _$TestImage._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
