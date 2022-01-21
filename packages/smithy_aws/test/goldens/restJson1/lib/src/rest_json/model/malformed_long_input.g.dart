// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.malformed_long_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedLongInput extends MalformedLongInput {
  @override
  final _i2.Int64? longInBody;
  @override
  final _i2.Int64? longInHeader;
  @override
  final _i2.Int64 longInPath;
  @override
  final _i2.Int64? longInQuery;

  factory _$MalformedLongInput(
          [void Function(MalformedLongInputBuilder)? updates]) =>
      (new MalformedLongInputBuilder()..update(updates)).build();

  _$MalformedLongInput._(
      {this.longInBody,
      this.longInHeader,
      required this.longInPath,
      this.longInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        longInPath, 'MalformedLongInput', 'longInPath');
  }

  @override
  MalformedLongInput rebuild(
          void Function(MalformedLongInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLongInputBuilder toBuilder() =>
      new MalformedLongInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLongInput &&
        longInBody == other.longInBody &&
        longInHeader == other.longInHeader &&
        longInPath == other.longInPath &&
        longInQuery == other.longInQuery;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, longInBody.hashCode), longInHeader.hashCode),
            longInPath.hashCode),
        longInQuery.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedLongInput')
          ..add('longInBody', longInBody)
          ..add('longInHeader', longInHeader)
          ..add('longInPath', longInPath)
          ..add('longInQuery', longInQuery))
        .toString();
  }
}

class MalformedLongInputBuilder
    implements Builder<MalformedLongInput, MalformedLongInputBuilder> {
  _$MalformedLongInput? _$v;

  _i2.Int64? _longInBody;
  _i2.Int64? get longInBody => _$this._longInBody;
  set longInBody(_i2.Int64? longInBody) => _$this._longInBody = longInBody;

  _i2.Int64? _longInHeader;
  _i2.Int64? get longInHeader => _$this._longInHeader;
  set longInHeader(_i2.Int64? longInHeader) =>
      _$this._longInHeader = longInHeader;

  _i2.Int64? _longInPath;
  _i2.Int64? get longInPath => _$this._longInPath;
  set longInPath(_i2.Int64? longInPath) => _$this._longInPath = longInPath;

  _i2.Int64? _longInQuery;
  _i2.Int64? get longInQuery => _$this._longInQuery;
  set longInQuery(_i2.Int64? longInQuery) => _$this._longInQuery = longInQuery;

  MalformedLongInputBuilder() {
    MalformedLongInput._init(this);
  }

  MalformedLongInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longInBody = $v.longInBody;
      _longInHeader = $v.longInHeader;
      _longInPath = $v.longInPath;
      _longInQuery = $v.longInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedLongInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLongInput;
  }

  @override
  void update(void Function(MalformedLongInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedLongInput build() {
    final _$result = _$v ??
        new _$MalformedLongInput._(
            longInBody: longInBody,
            longInHeader: longInHeader,
            longInPath: BuiltValueNullFieldError.checkNotNull(
                longInPath, 'MalformedLongInput', 'longInPath'),
            longInQuery: longInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedLongInputPayload extends MalformedLongInputPayload {
  @override
  final _i2.Int64? longInBody;

  factory _$MalformedLongInputPayload(
          [void Function(MalformedLongInputPayloadBuilder)? updates]) =>
      (new MalformedLongInputPayloadBuilder()..update(updates)).build();

  _$MalformedLongInputPayload._({this.longInBody}) : super._();

  @override
  MalformedLongInputPayload rebuild(
          void Function(MalformedLongInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLongInputPayloadBuilder toBuilder() =>
      new MalformedLongInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLongInputPayload && longInBody == other.longInBody;
  }

  @override
  int get hashCode {
    return $jf($jc(0, longInBody.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedLongInputPayload')
          ..add('longInBody', longInBody))
        .toString();
  }
}

class MalformedLongInputPayloadBuilder
    implements
        Builder<MalformedLongInputPayload, MalformedLongInputPayloadBuilder> {
  _$MalformedLongInputPayload? _$v;

  _i2.Int64? _longInBody;
  _i2.Int64? get longInBody => _$this._longInBody;
  set longInBody(_i2.Int64? longInBody) => _$this._longInBody = longInBody;

  MalformedLongInputPayloadBuilder() {
    MalformedLongInputPayload._init(this);
  }

  MalformedLongInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longInBody = $v.longInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedLongInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLongInputPayload;
  }

  @override
  void update(void Function(MalformedLongInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedLongInputPayload build() {
    final _$result =
        _$v ?? new _$MalformedLongInputPayload._(longInBody: longInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
