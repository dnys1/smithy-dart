// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.null_operation_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NullOperationInputOutput extends NullOperationInputOutput {
  @override
  final _i2.BuiltList<String?>? sparseStringList;
  @override
  final _i2.BuiltMap<String, String?>? sparseStringMap;
  @override
  final String? string;

  factory _$NullOperationInputOutput(
          [void Function(NullOperationInputOutputBuilder)? updates]) =>
      (new NullOperationInputOutputBuilder()..update(updates)).build();

  _$NullOperationInputOutput._(
      {this.sparseStringList, this.sparseStringMap, this.string})
      : super._();

  @override
  NullOperationInputOutput rebuild(
          void Function(NullOperationInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NullOperationInputOutputBuilder toBuilder() =>
      new NullOperationInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NullOperationInputOutput &&
        sparseStringList == other.sparseStringList &&
        sparseStringMap == other.sparseStringMap &&
        string == other.string;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, sparseStringList.hashCode), sparseStringMap.hashCode),
        string.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NullOperationInputOutput')
          ..add('sparseStringList', sparseStringList)
          ..add('sparseStringMap', sparseStringMap)
          ..add('string', string))
        .toString();
  }
}

class NullOperationInputOutputBuilder
    implements
        Builder<NullOperationInputOutput, NullOperationInputOutputBuilder> {
  _$NullOperationInputOutput? _$v;

  _i2.ListBuilder<String?>? _sparseStringList;
  _i2.ListBuilder<String?> get sparseStringList =>
      _$this._sparseStringList ??= new _i2.ListBuilder<String?>();
  set sparseStringList(_i2.ListBuilder<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i2.MapBuilder<String, String?>? _sparseStringMap;
  _i2.MapBuilder<String, String?> get sparseStringMap =>
      _$this._sparseStringMap ??= new _i2.MapBuilder<String, String?>();
  set sparseStringMap(_i2.MapBuilder<String, String?>? sparseStringMap) =>
      _$this._sparseStringMap = sparseStringMap;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  NullOperationInputOutputBuilder() {
    NullOperationInputOutput._init(this);
  }

  NullOperationInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sparseStringList = $v.sparseStringList?.toBuilder();
      _sparseStringMap = $v.sparseStringMap?.toBuilder();
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NullOperationInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NullOperationInputOutput;
  }

  @override
  void update(void Function(NullOperationInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NullOperationInputOutput build() {
    _$NullOperationInputOutput _$result;
    try {
      _$result = _$v ??
          new _$NullOperationInputOutput._(
              sparseStringList: _sparseStringList?.build(),
              sparseStringMap: _sparseStringMap?.build(),
              string: string);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sparseStringList';
        _sparseStringList?.build();
        _$failedField = 'sparseStringMap';
        _sparseStringMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NullOperationInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NullOperationInputOutputPayload
    extends NullOperationInputOutputPayload {
  @override
  final _i2.BuiltList<String?>? sparseStringList;
  @override
  final _i2.BuiltMap<String, String?>? sparseStringMap;
  @override
  final String? string;

  factory _$NullOperationInputOutputPayload(
          [void Function(NullOperationInputOutputPayloadBuilder)? updates]) =>
      (new NullOperationInputOutputPayloadBuilder()..update(updates)).build();

  _$NullOperationInputOutputPayload._(
      {this.sparseStringList, this.sparseStringMap, this.string})
      : super._();

  @override
  NullOperationInputOutputPayload rebuild(
          void Function(NullOperationInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NullOperationInputOutputPayloadBuilder toBuilder() =>
      new NullOperationInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NullOperationInputOutputPayload &&
        sparseStringList == other.sparseStringList &&
        sparseStringMap == other.sparseStringMap &&
        string == other.string;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, sparseStringList.hashCode), sparseStringMap.hashCode),
        string.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NullOperationInputOutputPayload')
          ..add('sparseStringList', sparseStringList)
          ..add('sparseStringMap', sparseStringMap)
          ..add('string', string))
        .toString();
  }
}

class NullOperationInputOutputPayloadBuilder
    implements
        Builder<NullOperationInputOutputPayload,
            NullOperationInputOutputPayloadBuilder> {
  _$NullOperationInputOutputPayload? _$v;

  _i2.BuiltList<String?>? _sparseStringList;
  _i2.BuiltList<String?>? get sparseStringList => _$this._sparseStringList;
  set sparseStringList(_i2.BuiltList<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i2.BuiltMap<String, String?>? _sparseStringMap;
  _i2.BuiltMap<String, String?>? get sparseStringMap => _$this._sparseStringMap;
  set sparseStringMap(_i2.BuiltMap<String, String?>? sparseStringMap) =>
      _$this._sparseStringMap = sparseStringMap;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  NullOperationInputOutputPayloadBuilder() {
    NullOperationInputOutputPayload._init(this);
  }

  NullOperationInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sparseStringList = $v.sparseStringList;
      _sparseStringMap = $v.sparseStringMap;
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NullOperationInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NullOperationInputOutputPayload;
  }

  @override
  void update(void Function(NullOperationInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NullOperationInputOutputPayload build() {
    final _$result = _$v ??
        new _$NullOperationInputOutputPayload._(
            sparseStringList: sparseStringList,
            sparseStringMap: sparseStringMap,
            string: string);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
