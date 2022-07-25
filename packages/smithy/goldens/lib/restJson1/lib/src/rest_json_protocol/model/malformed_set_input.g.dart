// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.malformed_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedSetInput extends MalformedSetInput {
  @override
  final _i3.BuiltSet<_i4.Uint8List>? blobSet;
  @override
  final _i3.BuiltSet<String>? set;

  factory _$MalformedSetInput(
          [void Function(MalformedSetInputBuilder)? updates]) =>
      (new MalformedSetInputBuilder()..update(updates))._build();

  _$MalformedSetInput._({this.blobSet, this.set}) : super._();

  @override
  MalformedSetInput rebuild(void Function(MalformedSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedSetInputBuilder toBuilder() =>
      new MalformedSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedSetInput &&
        blobSet == other.blobSet &&
        set == other.set;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, blobSet.hashCode), set.hashCode));
  }
}

class MalformedSetInputBuilder
    implements Builder<MalformedSetInput, MalformedSetInputBuilder> {
  _$MalformedSetInput? _$v;

  _i3.SetBuilder<_i4.Uint8List>? _blobSet;
  _i3.SetBuilder<_i4.Uint8List> get blobSet =>
      _$this._blobSet ??= new _i3.SetBuilder<_i4.Uint8List>();
  set blobSet(_i3.SetBuilder<_i4.Uint8List>? blobSet) =>
      _$this._blobSet = blobSet;

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
      _blobSet = $v.blobSet?.toBuilder();
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
  MalformedSetInput build() => _build();

  _$MalformedSetInput _build() {
    _$MalformedSetInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedSetInput._(
              blobSet: _blobSet?.build(), set: _set?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blobSet';
        _blobSet?.build();
        _$failedField = 'set';
        _set?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedSetInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
