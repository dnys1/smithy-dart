// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorTrait extends ErrorTrait {
  @override
  final String value;
  @override
  final bool isSynthetic;

  factory _$ErrorTrait([void Function(ErrorTraitBuilder)? updates]) =>
      (new ErrorTraitBuilder()..update(updates)).build();

  _$ErrorTrait._({required this.value, required this.isSynthetic}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'ErrorTrait', 'value');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'ErrorTrait', 'isSynthetic');
  }

  @override
  ErrorTrait rebuild(void Function(ErrorTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorTraitBuilder toBuilder() => new ErrorTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorTrait &&
        value == other.value &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, value.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorTrait')
          ..add('value', value)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class ErrorTraitBuilder implements Builder<ErrorTrait, ErrorTraitBuilder> {
  _$ErrorTrait? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  ErrorTraitBuilder() {
    ErrorTrait._init(this);
  }

  ErrorTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorTrait;
  }

  @override
  void update(void Function(ErrorTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorTrait build() {
    final _$result = _$v ??
        new _$ErrorTrait._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'ErrorTrait', 'value'),
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'ErrorTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
