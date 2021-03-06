// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_validation_protocol.model.malformed_pattern_override_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPatternOverrideInput extends MalformedPatternOverrideInput {
  @override
  final _i3.BuiltList<String>? list;
  @override
  final _i3.BuiltMap<String, String>? map;
  @override
  final String? string;
  @override
  final _i4.PatternUnionOverride? union;

  factory _$MalformedPatternOverrideInput(
          [void Function(MalformedPatternOverrideInputBuilder)? updates]) =>
      (new MalformedPatternOverrideInputBuilder()..update(updates))._build();

  _$MalformedPatternOverrideInput._(
      {this.list, this.map, this.string, this.union})
      : super._();

  @override
  MalformedPatternOverrideInput rebuild(
          void Function(MalformedPatternOverrideInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedPatternOverrideInputBuilder toBuilder() =>
      new MalformedPatternOverrideInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedPatternOverrideInput &&
        list == other.list &&
        map == other.map &&
        string == other.string &&
        union == other.union;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, list.hashCode), map.hashCode), string.hashCode),
        union.hashCode));
  }
}

class MalformedPatternOverrideInputBuilder
    implements
        Builder<MalformedPatternOverrideInput,
            MalformedPatternOverrideInputBuilder> {
  _$MalformedPatternOverrideInput? _$v;

  _i3.ListBuilder<String>? _list;
  _i3.ListBuilder<String> get list =>
      _$this._list ??= new _i3.ListBuilder<String>();
  set list(_i3.ListBuilder<String>? list) => _$this._list = list;

  _i3.MapBuilder<String, String>? _map;
  _i3.MapBuilder<String, String> get map =>
      _$this._map ??= new _i3.MapBuilder<String, String>();
  set map(_i3.MapBuilder<String, String>? map) => _$this._map = map;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  _i4.PatternUnionOverride? _union;
  _i4.PatternUnionOverride? get union => _$this._union;
  set union(_i4.PatternUnionOverride? union) => _$this._union = union;

  MalformedPatternOverrideInputBuilder() {
    MalformedPatternOverrideInput._init(this);
  }

  MalformedPatternOverrideInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _string = $v.string;
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedPatternOverrideInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedPatternOverrideInput;
  }

  @override
  void update(void Function(MalformedPatternOverrideInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedPatternOverrideInput build() => _build();

  _$MalformedPatternOverrideInput _build() {
    _$MalformedPatternOverrideInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedPatternOverrideInput._(
              list: _list?.build(),
              map: _map?.build(),
              string: string,
              union: union);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'map';
        _map?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedPatternOverrideInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
