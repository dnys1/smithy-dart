// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentation_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationTrait extends DocumentationTrait {
  @override
  final String value;
  @override
  final bool isSynthetic;

  factory _$DocumentationTrait(
          [void Function(DocumentationTraitBuilder)? updates]) =>
      (new DocumentationTraitBuilder()..update(updates)).build();

  _$DocumentationTrait._({required this.value, required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'DocumentationTrait', 'value');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'DocumentationTrait', 'isSynthetic');
  }

  @override
  DocumentationTrait rebuild(
          void Function(DocumentationTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationTraitBuilder toBuilder() =>
      new DocumentationTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationTrait &&
        value == other.value &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, value.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentationTrait')
          ..add('value', value)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class DocumentationTraitBuilder
    implements Builder<DocumentationTrait, DocumentationTraitBuilder> {
  _$DocumentationTrait? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  DocumentationTraitBuilder() {
    DocumentationTrait._init(this);
  }

  DocumentationTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationTrait;
  }

  @override
  void update(void Function(DocumentationTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentationTrait build() {
    final _$result = _$v ??
        new _$DocumentationTrait._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'DocumentationTrait', 'value'),
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'DocumentationTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
