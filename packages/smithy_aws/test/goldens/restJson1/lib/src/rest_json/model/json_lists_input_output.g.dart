// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.json_lists_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonListsInputOutput extends JsonListsInputOutput {
  @override
  final _i2.BuiltList<bool>? booleanList;
  @override
  final _i2.BuiltList<_i3.FooEnum>? enumList;
  @override
  final _i2.BuiltList<int>? integerList;
  @override
  final _i2.BuiltList<_i2.BuiltList<String>>? nestedStringList;
  @override
  final _i2.BuiltList<String?>? sparseStringList;
  @override
  final _i2.BuiltList<String>? stringList;
  @override
  final _i2.BuiltSet<String>? stringSet;
  @override
  final _i2.BuiltList<_i4.StructureListMember>? structureList;
  @override
  final _i2.BuiltList<DateTime>? timestampList;

  factory _$JsonListsInputOutput(
          [void Function(JsonListsInputOutputBuilder)? updates]) =>
      (new JsonListsInputOutputBuilder()..update(updates)).build();

  _$JsonListsInputOutput._(
      {this.booleanList,
      this.enumList,
      this.integerList,
      this.nestedStringList,
      this.sparseStringList,
      this.stringList,
      this.stringSet,
      this.structureList,
      this.timestampList})
      : super._();

  @override
  JsonListsInputOutput rebuild(
          void Function(JsonListsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonListsInputOutputBuilder toBuilder() =>
      new JsonListsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonListsInputOutput &&
        booleanList == other.booleanList &&
        enumList == other.enumList &&
        integerList == other.integerList &&
        nestedStringList == other.nestedStringList &&
        sparseStringList == other.sparseStringList &&
        stringList == other.stringList &&
        stringSet == other.stringSet &&
        structureList == other.structureList &&
        timestampList == other.timestampList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, booleanList.hashCode),
                                    enumList.hashCode),
                                integerList.hashCode),
                            nestedStringList.hashCode),
                        sparseStringList.hashCode),
                    stringList.hashCode),
                stringSet.hashCode),
            structureList.hashCode),
        timestampList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonListsInputOutput')
          ..add('booleanList', booleanList)
          ..add('enumList', enumList)
          ..add('integerList', integerList)
          ..add('nestedStringList', nestedStringList)
          ..add('sparseStringList', sparseStringList)
          ..add('stringList', stringList)
          ..add('stringSet', stringSet)
          ..add('structureList', structureList)
          ..add('timestampList', timestampList))
        .toString();
  }
}

class JsonListsInputOutputBuilder
    implements Builder<JsonListsInputOutput, JsonListsInputOutputBuilder> {
  _$JsonListsInputOutput? _$v;

  _i2.ListBuilder<bool>? _booleanList;
  _i2.ListBuilder<bool> get booleanList =>
      _$this._booleanList ??= new _i2.ListBuilder<bool>();
  set booleanList(_i2.ListBuilder<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i2.ListBuilder<_i3.FooEnum>? _enumList;
  _i2.ListBuilder<_i3.FooEnum> get enumList =>
      _$this._enumList ??= new _i2.ListBuilder<_i3.FooEnum>();
  set enumList(_i2.ListBuilder<_i3.FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i2.ListBuilder<int>? _integerList;
  _i2.ListBuilder<int> get integerList =>
      _$this._integerList ??= new _i2.ListBuilder<int>();
  set integerList(_i2.ListBuilder<int>? integerList) =>
      _$this._integerList = integerList;

  _i2.ListBuilder<_i2.BuiltList<String>>? _nestedStringList;
  _i2.ListBuilder<_i2.BuiltList<String>> get nestedStringList =>
      _$this._nestedStringList ??= new _i2.ListBuilder<_i2.BuiltList<String>>();
  set nestedStringList(
          _i2.ListBuilder<_i2.BuiltList<String>>? nestedStringList) =>
      _$this._nestedStringList = nestedStringList;

  _i2.ListBuilder<String?>? _sparseStringList;
  _i2.ListBuilder<String?> get sparseStringList =>
      _$this._sparseStringList ??= new _i2.ListBuilder<String?>();
  set sparseStringList(_i2.ListBuilder<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i2.ListBuilder<String>? _stringList;
  _i2.ListBuilder<String> get stringList =>
      _$this._stringList ??= new _i2.ListBuilder<String>();
  set stringList(_i2.ListBuilder<String>? stringList) =>
      _$this._stringList = stringList;

  _i2.SetBuilder<String>? _stringSet;
  _i2.SetBuilder<String> get stringSet =>
      _$this._stringSet ??= new _i2.SetBuilder<String>();
  set stringSet(_i2.SetBuilder<String>? stringSet) =>
      _$this._stringSet = stringSet;

  _i2.ListBuilder<_i4.StructureListMember>? _structureList;
  _i2.ListBuilder<_i4.StructureListMember> get structureList =>
      _$this._structureList ??= new _i2.ListBuilder<_i4.StructureListMember>();
  set structureList(_i2.ListBuilder<_i4.StructureListMember>? structureList) =>
      _$this._structureList = structureList;

  _i2.ListBuilder<DateTime>? _timestampList;
  _i2.ListBuilder<DateTime> get timestampList =>
      _$this._timestampList ??= new _i2.ListBuilder<DateTime>();
  set timestampList(_i2.ListBuilder<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  JsonListsInputOutputBuilder() {
    JsonListsInputOutput._init(this);
  }

  JsonListsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanList = $v.booleanList?.toBuilder();
      _enumList = $v.enumList?.toBuilder();
      _integerList = $v.integerList?.toBuilder();
      _nestedStringList = $v.nestedStringList?.toBuilder();
      _sparseStringList = $v.sparseStringList?.toBuilder();
      _stringList = $v.stringList?.toBuilder();
      _stringSet = $v.stringSet?.toBuilder();
      _structureList = $v.structureList?.toBuilder();
      _timestampList = $v.timestampList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonListsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonListsInputOutput;
  }

  @override
  void update(void Function(JsonListsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonListsInputOutput build() {
    _$JsonListsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$JsonListsInputOutput._(
              booleanList: _booleanList?.build(),
              enumList: _enumList?.build(),
              integerList: _integerList?.build(),
              nestedStringList: _nestedStringList?.build(),
              sparseStringList: _sparseStringList?.build(),
              stringList: _stringList?.build(),
              stringSet: _stringSet?.build(),
              structureList: _structureList?.build(),
              timestampList: _timestampList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'booleanList';
        _booleanList?.build();
        _$failedField = 'enumList';
        _enumList?.build();
        _$failedField = 'integerList';
        _integerList?.build();
        _$failedField = 'nestedStringList';
        _nestedStringList?.build();
        _$failedField = 'sparseStringList';
        _sparseStringList?.build();
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'stringSet';
        _stringSet?.build();
        _$failedField = 'structureList';
        _structureList?.build();
        _$failedField = 'timestampList';
        _timestampList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'JsonListsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$JsonListsInputOutputPayload extends JsonListsInputOutputPayload {
  @override
  final _i2.BuiltList<bool>? booleanList;
  @override
  final _i2.BuiltList<_i3.FooEnum>? enumList;
  @override
  final _i2.BuiltList<int>? integerList;
  @override
  final _i2.BuiltList<_i2.BuiltList<String>>? nestedStringList;
  @override
  final _i2.BuiltList<String?>? sparseStringList;
  @override
  final _i2.BuiltList<String>? stringList;
  @override
  final _i2.BuiltSet<String>? stringSet;
  @override
  final _i2.BuiltList<_i4.StructureListMember>? structureList;
  @override
  final _i2.BuiltList<DateTime>? timestampList;

  factory _$JsonListsInputOutputPayload(
          [void Function(JsonListsInputOutputPayloadBuilder)? updates]) =>
      (new JsonListsInputOutputPayloadBuilder()..update(updates)).build();

  _$JsonListsInputOutputPayload._(
      {this.booleanList,
      this.enumList,
      this.integerList,
      this.nestedStringList,
      this.sparseStringList,
      this.stringList,
      this.stringSet,
      this.structureList,
      this.timestampList})
      : super._();

  @override
  JsonListsInputOutputPayload rebuild(
          void Function(JsonListsInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonListsInputOutputPayloadBuilder toBuilder() =>
      new JsonListsInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonListsInputOutputPayload &&
        booleanList == other.booleanList &&
        enumList == other.enumList &&
        integerList == other.integerList &&
        nestedStringList == other.nestedStringList &&
        sparseStringList == other.sparseStringList &&
        stringList == other.stringList &&
        stringSet == other.stringSet &&
        structureList == other.structureList &&
        timestampList == other.timestampList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, booleanList.hashCode),
                                    enumList.hashCode),
                                integerList.hashCode),
                            nestedStringList.hashCode),
                        sparseStringList.hashCode),
                    stringList.hashCode),
                stringSet.hashCode),
            structureList.hashCode),
        timestampList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonListsInputOutputPayload')
          ..add('booleanList', booleanList)
          ..add('enumList', enumList)
          ..add('integerList', integerList)
          ..add('nestedStringList', nestedStringList)
          ..add('sparseStringList', sparseStringList)
          ..add('stringList', stringList)
          ..add('stringSet', stringSet)
          ..add('structureList', structureList)
          ..add('timestampList', timestampList))
        .toString();
  }
}

class JsonListsInputOutputPayloadBuilder
    implements
        Builder<JsonListsInputOutputPayload,
            JsonListsInputOutputPayloadBuilder> {
  _$JsonListsInputOutputPayload? _$v;

  _i2.BuiltList<bool>? _booleanList;
  _i2.BuiltList<bool>? get booleanList => _$this._booleanList;
  set booleanList(_i2.BuiltList<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i2.BuiltList<_i3.FooEnum>? _enumList;
  _i2.BuiltList<_i3.FooEnum>? get enumList => _$this._enumList;
  set enumList(_i2.BuiltList<_i3.FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i2.BuiltList<int>? _integerList;
  _i2.BuiltList<int>? get integerList => _$this._integerList;
  set integerList(_i2.BuiltList<int>? integerList) =>
      _$this._integerList = integerList;

  _i2.BuiltList<_i2.BuiltList<String>>? _nestedStringList;
  _i2.BuiltList<_i2.BuiltList<String>>? get nestedStringList =>
      _$this._nestedStringList;
  set nestedStringList(
          _i2.BuiltList<_i2.BuiltList<String>>? nestedStringList) =>
      _$this._nestedStringList = nestedStringList;

  _i2.BuiltList<String?>? _sparseStringList;
  _i2.BuiltList<String?>? get sparseStringList => _$this._sparseStringList;
  set sparseStringList(_i2.BuiltList<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i2.BuiltList<String>? _stringList;
  _i2.BuiltList<String>? get stringList => _$this._stringList;
  set stringList(_i2.BuiltList<String>? stringList) =>
      _$this._stringList = stringList;

  _i2.BuiltSet<String>? _stringSet;
  _i2.BuiltSet<String>? get stringSet => _$this._stringSet;
  set stringSet(_i2.BuiltSet<String>? stringSet) =>
      _$this._stringSet = stringSet;

  _i2.BuiltList<_i4.StructureListMember>? _structureList;
  _i2.BuiltList<_i4.StructureListMember>? get structureList =>
      _$this._structureList;
  set structureList(_i2.BuiltList<_i4.StructureListMember>? structureList) =>
      _$this._structureList = structureList;

  _i2.BuiltList<DateTime>? _timestampList;
  _i2.BuiltList<DateTime>? get timestampList => _$this._timestampList;
  set timestampList(_i2.BuiltList<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  JsonListsInputOutputPayloadBuilder() {
    JsonListsInputOutputPayload._init(this);
  }

  JsonListsInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanList = $v.booleanList;
      _enumList = $v.enumList;
      _integerList = $v.integerList;
      _nestedStringList = $v.nestedStringList;
      _sparseStringList = $v.sparseStringList;
      _stringList = $v.stringList;
      _stringSet = $v.stringSet;
      _structureList = $v.structureList;
      _timestampList = $v.timestampList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonListsInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonListsInputOutputPayload;
  }

  @override
  void update(void Function(JsonListsInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonListsInputOutputPayload build() {
    final _$result = _$v ??
        new _$JsonListsInputOutputPayload._(
            booleanList: booleanList,
            enumList: enumList,
            integerList: integerList,
            nestedStringList: nestedStringList,
            sparseStringList: sparseStringList,
            stringList: stringList,
            stringSet: stringSet,
            structureList: structureList,
            timestampList: timestampList);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
