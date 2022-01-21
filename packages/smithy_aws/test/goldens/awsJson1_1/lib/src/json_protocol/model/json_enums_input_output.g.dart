// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.json_enums_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonEnumsInputOutput extends JsonEnumsInputOutput {
  @override
  final _i2.FooEnum? fooEnum1;
  @override
  final _i2.FooEnum? fooEnum2;
  @override
  final _i2.FooEnum? fooEnum3;
  @override
  final _i3.BuiltList<_i2.FooEnum>? fooEnumList;
  @override
  final _i3.BuiltMap<String, _i2.FooEnum>? fooEnumMap;
  @override
  final _i3.BuiltSet<_i2.FooEnum>? fooEnumSet;

  factory _$JsonEnumsInputOutput(
          [void Function(JsonEnumsInputOutputBuilder)? updates]) =>
      (new JsonEnumsInputOutputBuilder()..update(updates)).build();

  _$JsonEnumsInputOutput._(
      {this.fooEnum1,
      this.fooEnum2,
      this.fooEnum3,
      this.fooEnumList,
      this.fooEnumMap,
      this.fooEnumSet})
      : super._();

  @override
  JsonEnumsInputOutput rebuild(
          void Function(JsonEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonEnumsInputOutputBuilder toBuilder() =>
      new JsonEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonEnumsInputOutput &&
        fooEnum1 == other.fooEnum1 &&
        fooEnum2 == other.fooEnum2 &&
        fooEnum3 == other.fooEnum3 &&
        fooEnumList == other.fooEnumList &&
        fooEnumMap == other.fooEnumMap &&
        fooEnumSet == other.fooEnumSet;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fooEnum1.hashCode), fooEnum2.hashCode),
                    fooEnum3.hashCode),
                fooEnumList.hashCode),
            fooEnumMap.hashCode),
        fooEnumSet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonEnumsInputOutput')
          ..add('fooEnum1', fooEnum1)
          ..add('fooEnum2', fooEnum2)
          ..add('fooEnum3', fooEnum3)
          ..add('fooEnumList', fooEnumList)
          ..add('fooEnumMap', fooEnumMap)
          ..add('fooEnumSet', fooEnumSet))
        .toString();
  }
}

class JsonEnumsInputOutputBuilder
    implements Builder<JsonEnumsInputOutput, JsonEnumsInputOutputBuilder> {
  _$JsonEnumsInputOutput? _$v;

  _i2.FooEnum? _fooEnum1;
  _i2.FooEnum? get fooEnum1 => _$this._fooEnum1;
  set fooEnum1(_i2.FooEnum? fooEnum1) => _$this._fooEnum1 = fooEnum1;

  _i2.FooEnum? _fooEnum2;
  _i2.FooEnum? get fooEnum2 => _$this._fooEnum2;
  set fooEnum2(_i2.FooEnum? fooEnum2) => _$this._fooEnum2 = fooEnum2;

  _i2.FooEnum? _fooEnum3;
  _i2.FooEnum? get fooEnum3 => _$this._fooEnum3;
  set fooEnum3(_i2.FooEnum? fooEnum3) => _$this._fooEnum3 = fooEnum3;

  _i3.ListBuilder<_i2.FooEnum>? _fooEnumList;
  _i3.ListBuilder<_i2.FooEnum> get fooEnumList =>
      _$this._fooEnumList ??= new _i3.ListBuilder<_i2.FooEnum>();
  set fooEnumList(_i3.ListBuilder<_i2.FooEnum>? fooEnumList) =>
      _$this._fooEnumList = fooEnumList;

  _i3.MapBuilder<String, _i2.FooEnum>? _fooEnumMap;
  _i3.MapBuilder<String, _i2.FooEnum> get fooEnumMap =>
      _$this._fooEnumMap ??= new _i3.MapBuilder<String, _i2.FooEnum>();
  set fooEnumMap(_i3.MapBuilder<String, _i2.FooEnum>? fooEnumMap) =>
      _$this._fooEnumMap = fooEnumMap;

  _i3.SetBuilder<_i2.FooEnum>? _fooEnumSet;
  _i3.SetBuilder<_i2.FooEnum> get fooEnumSet =>
      _$this._fooEnumSet ??= new _i3.SetBuilder<_i2.FooEnum>();
  set fooEnumSet(_i3.SetBuilder<_i2.FooEnum>? fooEnumSet) =>
      _$this._fooEnumSet = fooEnumSet;

  JsonEnumsInputOutputBuilder() {
    JsonEnumsInputOutput._init(this);
  }

  JsonEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fooEnum1 = $v.fooEnum1;
      _fooEnum2 = $v.fooEnum2;
      _fooEnum3 = $v.fooEnum3;
      _fooEnumList = $v.fooEnumList?.toBuilder();
      _fooEnumMap = $v.fooEnumMap?.toBuilder();
      _fooEnumSet = $v.fooEnumSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonEnumsInputOutput;
  }

  @override
  void update(void Function(JsonEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonEnumsInputOutput build() {
    _$JsonEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$JsonEnumsInputOutput._(
              fooEnum1: fooEnum1,
              fooEnum2: fooEnum2,
              fooEnum3: fooEnum3,
              fooEnumList: _fooEnumList?.build(),
              fooEnumMap: _fooEnumMap?.build(),
              fooEnumSet: _fooEnumSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooEnumList';
        _fooEnumList?.build();
        _$failedField = 'fooEnumMap';
        _fooEnumMap?.build();
        _$failedField = 'fooEnumSet';
        _fooEnumSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'JsonEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$JsonEnumsInputOutputPayload extends JsonEnumsInputOutputPayload {
  @override
  final _i2.FooEnum? fooEnum1;
  @override
  final _i2.FooEnum? fooEnum2;
  @override
  final _i2.FooEnum? fooEnum3;
  @override
  final _i3.BuiltList<_i2.FooEnum>? fooEnumList;
  @override
  final _i3.BuiltMap<String, _i2.FooEnum>? fooEnumMap;
  @override
  final _i3.BuiltSet<_i2.FooEnum>? fooEnumSet;

  factory _$JsonEnumsInputOutputPayload(
          [void Function(JsonEnumsInputOutputPayloadBuilder)? updates]) =>
      (new JsonEnumsInputOutputPayloadBuilder()..update(updates)).build();

  _$JsonEnumsInputOutputPayload._(
      {this.fooEnum1,
      this.fooEnum2,
      this.fooEnum3,
      this.fooEnumList,
      this.fooEnumMap,
      this.fooEnumSet})
      : super._();

  @override
  JsonEnumsInputOutputPayload rebuild(
          void Function(JsonEnumsInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonEnumsInputOutputPayloadBuilder toBuilder() =>
      new JsonEnumsInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonEnumsInputOutputPayload &&
        fooEnum1 == other.fooEnum1 &&
        fooEnum2 == other.fooEnum2 &&
        fooEnum3 == other.fooEnum3 &&
        fooEnumList == other.fooEnumList &&
        fooEnumMap == other.fooEnumMap &&
        fooEnumSet == other.fooEnumSet;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fooEnum1.hashCode), fooEnum2.hashCode),
                    fooEnum3.hashCode),
                fooEnumList.hashCode),
            fooEnumMap.hashCode),
        fooEnumSet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonEnumsInputOutputPayload')
          ..add('fooEnum1', fooEnum1)
          ..add('fooEnum2', fooEnum2)
          ..add('fooEnum3', fooEnum3)
          ..add('fooEnumList', fooEnumList)
          ..add('fooEnumMap', fooEnumMap)
          ..add('fooEnumSet', fooEnumSet))
        .toString();
  }
}

class JsonEnumsInputOutputPayloadBuilder
    implements
        Builder<JsonEnumsInputOutputPayload,
            JsonEnumsInputOutputPayloadBuilder> {
  _$JsonEnumsInputOutputPayload? _$v;

  _i2.FooEnum? _fooEnum1;
  _i2.FooEnum? get fooEnum1 => _$this._fooEnum1;
  set fooEnum1(_i2.FooEnum? fooEnum1) => _$this._fooEnum1 = fooEnum1;

  _i2.FooEnum? _fooEnum2;
  _i2.FooEnum? get fooEnum2 => _$this._fooEnum2;
  set fooEnum2(_i2.FooEnum? fooEnum2) => _$this._fooEnum2 = fooEnum2;

  _i2.FooEnum? _fooEnum3;
  _i2.FooEnum? get fooEnum3 => _$this._fooEnum3;
  set fooEnum3(_i2.FooEnum? fooEnum3) => _$this._fooEnum3 = fooEnum3;

  _i3.BuiltList<_i2.FooEnum>? _fooEnumList;
  _i3.BuiltList<_i2.FooEnum>? get fooEnumList => _$this._fooEnumList;
  set fooEnumList(_i3.BuiltList<_i2.FooEnum>? fooEnumList) =>
      _$this._fooEnumList = fooEnumList;

  _i3.BuiltMap<String, _i2.FooEnum>? _fooEnumMap;
  _i3.BuiltMap<String, _i2.FooEnum>? get fooEnumMap => _$this._fooEnumMap;
  set fooEnumMap(_i3.BuiltMap<String, _i2.FooEnum>? fooEnumMap) =>
      _$this._fooEnumMap = fooEnumMap;

  _i3.BuiltSet<_i2.FooEnum>? _fooEnumSet;
  _i3.BuiltSet<_i2.FooEnum>? get fooEnumSet => _$this._fooEnumSet;
  set fooEnumSet(_i3.BuiltSet<_i2.FooEnum>? fooEnumSet) =>
      _$this._fooEnumSet = fooEnumSet;

  JsonEnumsInputOutputPayloadBuilder() {
    JsonEnumsInputOutputPayload._init(this);
  }

  JsonEnumsInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fooEnum1 = $v.fooEnum1;
      _fooEnum2 = $v.fooEnum2;
      _fooEnum3 = $v.fooEnum3;
      _fooEnumList = $v.fooEnumList;
      _fooEnumMap = $v.fooEnumMap;
      _fooEnumSet = $v.fooEnumSet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonEnumsInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonEnumsInputOutputPayload;
  }

  @override
  void update(void Function(JsonEnumsInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonEnumsInputOutputPayload build() {
    final _$result = _$v ??
        new _$JsonEnumsInputOutputPayload._(
            fooEnum1: fooEnum1,
            fooEnum2: fooEnum2,
            fooEnum3: fooEnum3,
            fooEnumList: fooEnumList,
            fooEnumMap: fooEnumMap,
            fooEnumSet: fooEnumSet);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new