// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.error_with_members;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorWithMembers extends ErrorWithMembers {
  @override
  final String? code;
  @override
  final _i2.KitchenSink? complexData;
  @override
  final int? integerField;
  @override
  final _i3.BuiltList<String>? listField;
  @override
  final _i3.BuiltMap<String, String>? mapField;
  @override
  final String? message;
  @override
  final String? stringField;

  factory _$ErrorWithMembers(
          [void Function(ErrorWithMembersBuilder)? updates]) =>
      (new ErrorWithMembersBuilder()..update(updates)).build();

  _$ErrorWithMembers._(
      {this.code,
      this.complexData,
      this.integerField,
      this.listField,
      this.mapField,
      this.message,
      this.stringField})
      : super._();

  @override
  ErrorWithMembers rebuild(void Function(ErrorWithMembersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorWithMembersBuilder toBuilder() =>
      new ErrorWithMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorWithMembers &&
        code == other.code &&
        complexData == other.complexData &&
        integerField == other.integerField &&
        listField == other.listField &&
        mapField == other.mapField &&
        message == other.message &&
        stringField == other.stringField;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, code.hashCode), complexData.hashCode),
                        integerField.hashCode),
                    listField.hashCode),
                mapField.hashCode),
            message.hashCode),
        stringField.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorWithMembers')
          ..add('code', code)
          ..add('complexData', complexData)
          ..add('integerField', integerField)
          ..add('listField', listField)
          ..add('mapField', mapField)
          ..add('message', message)
          ..add('stringField', stringField))
        .toString();
  }
}

class ErrorWithMembersBuilder
    implements Builder<ErrorWithMembers, ErrorWithMembersBuilder> {
  _$ErrorWithMembers? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  _i2.KitchenSinkBuilder? _complexData;
  _i2.KitchenSinkBuilder get complexData =>
      _$this._complexData ??= new _i2.KitchenSinkBuilder();
  set complexData(_i2.KitchenSinkBuilder? complexData) =>
      _$this._complexData = complexData;

  int? _integerField;
  int? get integerField => _$this._integerField;
  set integerField(int? integerField) => _$this._integerField = integerField;

  _i3.ListBuilder<String>? _listField;
  _i3.ListBuilder<String> get listField =>
      _$this._listField ??= new _i3.ListBuilder<String>();
  set listField(_i3.ListBuilder<String>? listField) =>
      _$this._listField = listField;

  _i3.MapBuilder<String, String>? _mapField;
  _i3.MapBuilder<String, String> get mapField =>
      _$this._mapField ??= new _i3.MapBuilder<String, String>();
  set mapField(_i3.MapBuilder<String, String>? mapField) =>
      _$this._mapField = mapField;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _stringField;
  String? get stringField => _$this._stringField;
  set stringField(String? stringField) => _$this._stringField = stringField;

  ErrorWithMembersBuilder() {
    ErrorWithMembers._init(this);
  }

  ErrorWithMembersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _complexData = $v.complexData?.toBuilder();
      _integerField = $v.integerField;
      _listField = $v.listField?.toBuilder();
      _mapField = $v.mapField?.toBuilder();
      _message = $v.message;
      _stringField = $v.stringField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorWithMembers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorWithMembers;
  }

  @override
  void update(void Function(ErrorWithMembersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorWithMembers build() {
    _$ErrorWithMembers _$result;
    try {
      _$result = _$v ??
          new _$ErrorWithMembers._(
              code: code,
              complexData: _complexData?.build(),
              integerField: integerField,
              listField: _listField?.build(),
              mapField: _mapField?.build(),
              message: message,
              stringField: stringField);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complexData';
        _complexData?.build();

        _$failedField = 'listField';
        _listField?.build();
        _$failedField = 'mapField';
        _mapField?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ErrorWithMembers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ErrorWithMembersPayload extends ErrorWithMembersPayload {
  @override
  final String? code;
  @override
  final _i2.KitchenSink? complexData;
  @override
  final int? integerField;
  @override
  final _i3.BuiltList<String>? listField;
  @override
  final _i3.BuiltMap<String, String>? mapField;
  @override
  final String? message;
  @override
  final String? stringField;

  factory _$ErrorWithMembersPayload(
          [void Function(ErrorWithMembersPayloadBuilder)? updates]) =>
      (new ErrorWithMembersPayloadBuilder()..update(updates)).build();

  _$ErrorWithMembersPayload._(
      {this.code,
      this.complexData,
      this.integerField,
      this.listField,
      this.mapField,
      this.message,
      this.stringField})
      : super._();

  @override
  ErrorWithMembersPayload rebuild(
          void Function(ErrorWithMembersPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorWithMembersPayloadBuilder toBuilder() =>
      new ErrorWithMembersPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorWithMembersPayload &&
        code == other.code &&
        complexData == other.complexData &&
        integerField == other.integerField &&
        listField == other.listField &&
        mapField == other.mapField &&
        message == other.message &&
        stringField == other.stringField;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, code.hashCode), complexData.hashCode),
                        integerField.hashCode),
                    listField.hashCode),
                mapField.hashCode),
            message.hashCode),
        stringField.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorWithMembersPayload')
          ..add('code', code)
          ..add('complexData', complexData)
          ..add('integerField', integerField)
          ..add('listField', listField)
          ..add('mapField', mapField)
          ..add('message', message)
          ..add('stringField', stringField))
        .toString();
  }
}

class ErrorWithMembersPayloadBuilder
    implements
        Builder<ErrorWithMembersPayload, ErrorWithMembersPayloadBuilder> {
  _$ErrorWithMembersPayload? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  _i2.KitchenSink? _complexData;
  _i2.KitchenSink? get complexData => _$this._complexData;
  set complexData(_i2.KitchenSink? complexData) =>
      _$this._complexData = complexData;

  int? _integerField;
  int? get integerField => _$this._integerField;
  set integerField(int? integerField) => _$this._integerField = integerField;

  _i3.BuiltList<String>? _listField;
  _i3.BuiltList<String>? get listField => _$this._listField;
  set listField(_i3.BuiltList<String>? listField) =>
      _$this._listField = listField;

  _i3.BuiltMap<String, String>? _mapField;
  _i3.BuiltMap<String, String>? get mapField => _$this._mapField;
  set mapField(_i3.BuiltMap<String, String>? mapField) =>
      _$this._mapField = mapField;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _stringField;
  String? get stringField => _$this._stringField;
  set stringField(String? stringField) => _$this._stringField = stringField;

  ErrorWithMembersPayloadBuilder() {
    ErrorWithMembersPayload._init(this);
  }

  ErrorWithMembersPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _complexData = $v.complexData;
      _integerField = $v.integerField;
      _listField = $v.listField;
      _mapField = $v.mapField;
      _message = $v.message;
      _stringField = $v.stringField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorWithMembersPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorWithMembersPayload;
  }

  @override
  void update(void Function(ErrorWithMembersPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorWithMembersPayload build() {
    final _$result = _$v ??
        new _$ErrorWithMembersPayload._(
            code: code,
            complexData: complexData,
            integerField: integerField,
            listField: listField,
            mapField: mapField,
            message: message,
            stringField: stringField);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
