// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.malformed_timestamp_body_http_date_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampBodyHttpDateInput
    extends MalformedTimestampBodyHttpDateInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyHttpDateInput(
          [void Function(MalformedTimestampBodyHttpDateInputBuilder)?
              updates]) =>
      (new MalformedTimestampBodyHttpDateInputBuilder()..update(updates))
          .build();

  _$MalformedTimestampBodyHttpDateInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, 'MalformedTimestampBodyHttpDateInput', 'timestamp');
  }

  @override
  MalformedTimestampBodyHttpDateInput rebuild(
          void Function(MalformedTimestampBodyHttpDateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyHttpDateInputBuilder toBuilder() =>
      new MalformedTimestampBodyHttpDateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyHttpDateInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedTimestampBodyHttpDateInput')
          ..add('timestamp', timestamp))
        .toString();
  }
}

class MalformedTimestampBodyHttpDateInputBuilder
    implements
        Builder<MalformedTimestampBodyHttpDateInput,
            MalformedTimestampBodyHttpDateInputBuilder> {
  _$MalformedTimestampBodyHttpDateInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyHttpDateInputBuilder() {
    MalformedTimestampBodyHttpDateInput._init(this);
  }

  MalformedTimestampBodyHttpDateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyHttpDateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampBodyHttpDateInput;
  }

  @override
  void update(
      void Function(MalformedTimestampBodyHttpDateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedTimestampBodyHttpDateInput build() {
    final _$result = _$v ??
        new _$MalformedTimestampBodyHttpDateInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, 'MalformedTimestampBodyHttpDateInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampBodyHttpDateInputPayload
    extends MalformedTimestampBodyHttpDateInputPayload {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyHttpDateInputPayload(
          [void Function(MalformedTimestampBodyHttpDateInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampBodyHttpDateInputPayloadBuilder()..update(updates))
          .build();

  _$MalformedTimestampBodyHttpDateInputPayload._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, 'MalformedTimestampBodyHttpDateInputPayload', 'timestamp');
  }

  @override
  MalformedTimestampBodyHttpDateInputPayload rebuild(
          void Function(MalformedTimestampBodyHttpDateInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyHttpDateInputPayloadBuilder toBuilder() =>
      new MalformedTimestampBodyHttpDateInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyHttpDateInputPayload &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'MalformedTimestampBodyHttpDateInputPayload')
          ..add('timestamp', timestamp))
        .toString();
  }
}

class MalformedTimestampBodyHttpDateInputPayloadBuilder
    implements
        Builder<MalformedTimestampBodyHttpDateInputPayload,
            MalformedTimestampBodyHttpDateInputPayloadBuilder> {
  _$MalformedTimestampBodyHttpDateInputPayload? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyHttpDateInputPayloadBuilder() {
    MalformedTimestampBodyHttpDateInputPayload._init(this);
  }

  MalformedTimestampBodyHttpDateInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyHttpDateInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampBodyHttpDateInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampBodyHttpDateInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedTimestampBodyHttpDateInputPayload build() {
    final _$result = _$v ??
        new _$MalformedTimestampBodyHttpDateInputPayload._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                'MalformedTimestampBodyHttpDateInputPayload', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
