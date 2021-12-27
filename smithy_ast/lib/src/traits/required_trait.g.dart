// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'required_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequiredTrait extends RequiredTrait {
  @override
  final bool isSynthetic;

  factory _$RequiredTrait([void Function(RequiredTraitBuilder)? updates]) =>
      (new RequiredTraitBuilder()..update(updates)).build();

  _$RequiredTrait._({required this.isSynthetic}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'RequiredTrait', 'isSynthetic');
  }

  @override
  RequiredTrait rebuild(void Function(RequiredTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequiredTraitBuilder toBuilder() => new RequiredTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequiredTrait && isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RequiredTrait')
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class RequiredTraitBuilder
    implements Builder<RequiredTrait, RequiredTraitBuilder> {
  _$RequiredTrait? _$v;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  RequiredTraitBuilder() {
    RequiredTrait._init(this);
  }

  RequiredTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequiredTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequiredTrait;
  }

  @override
  void update(void Function(RequiredTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RequiredTrait build() {
    final _$result = _$v ??
        new _$RequiredTrait._(
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'RequiredTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
