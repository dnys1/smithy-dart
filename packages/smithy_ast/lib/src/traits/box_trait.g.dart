// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoxTrait extends BoxTrait {
  @override
  final bool isSynthetic;

  factory _$BoxTrait([void Function(BoxTraitBuilder)? updates]) =>
      (new BoxTraitBuilder()..update(updates)).build();

  _$BoxTrait._({required this.isSynthetic}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'BoxTrait', 'isSynthetic');
  }

  @override
  BoxTrait rebuild(void Function(BoxTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoxTraitBuilder toBuilder() => new BoxTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoxTrait && isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BoxTrait')
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class BoxTraitBuilder implements Builder<BoxTrait, BoxTraitBuilder> {
  _$BoxTrait? _$v;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  BoxTraitBuilder() {
    BoxTrait._init(this);
  }

  BoxTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoxTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BoxTrait;
  }

  @override
  void update(void Function(BoxTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BoxTrait build() {
    final _$result = _$v ??
        new _$BoxTrait._(
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'BoxTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
