// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.malformed_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedSetInput extends MalformedSetInput {
  @override
  final _i3.BuiltSet<String>? set;

  factory _$MalformedSetInput(
          [void Function(MalformedSetInputBuilder)? updates]) =>
      (new MalformedSetInputBuilder()..update(updates)).build();

  _$MalformedSetInput._({this.set}) : super._();

  @override
  MalformedSetInput rebuild(void Function(MalformedSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedSetInputBuilder toBuilder() =>
      new MalformedSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedSetInput && set == other.set;
  }

  @override
  int get hashCode {
    return $jf($jc(0, set.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedSetInput')..add('set', set))
        .toString();
  }
}

class MalformedSetInputBuilder
    implements Builder<MalformedSetInput, MalformedSetInputBuilder> {
  _$MalformedSetInput? _$v;

  _i3.SetBuilder<String>? _set;
  _i3.SetBuilder<String> get set =>
      _$this._set ??= new _i3.SetBuilder<String>();
  set set(_i3.SetBuilder<String>? set) => _$this._set = set;

  MalformedSetInputBuilder() {
    MalformedSetInput._init(this);
  }

  MalformedSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _set = $v.set?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedSetInput;
  }

  @override
  void update(void Function(MalformedSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedSetInput build() {
    _$MalformedSetInput _$result;
    try {
      _$result = _$v ?? new _$MalformedSetInput._(set: _set?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'set';
        _set?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MalformedSetInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
