// GENERATED CODE - DO NOT MODIFY BY HAND

part of deprecated.test.model.qux;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Qux extends Qux {
  factory _$Qux([void Function(QuxBuilder)? updates]) =>
      (new QuxBuilder()..update(updates)).build();

  _$Qux._() : super._();

  @override
  Qux rebuild(void Function(QuxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuxBuilder toBuilder() => new QuxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Qux;
  }

  @override
  int get hashCode {
    return 872758689;
  }
}

class QuxBuilder implements Builder<Qux, QuxBuilder> {
  _$Qux? _$v;

  QuxBuilder() {
    Qux._init(this);
  }

  @override
  void replace(Qux other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Qux;
  }

  @override
  void update(void Function(QuxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Qux build() {
    final _$result = _$v ?? new _$Qux._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
