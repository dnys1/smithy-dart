// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.http_request_with_labels_and_timestamp_format_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithLabelsAndTimestampFormatInput
    extends HttpRequestWithLabelsAndTimestampFormatInput {
  @override
  final DateTime defaultFormat;
  @override
  final DateTime memberDateTime;
  @override
  final DateTime memberEpochSeconds;
  @override
  final DateTime memberHttpDate;
  @override
  final DateTime targetDateTime;
  @override
  final DateTime targetEpochSeconds;
  @override
  final DateTime targetHttpDate;

  factory _$HttpRequestWithLabelsAndTimestampFormatInput(
          [void Function(HttpRequestWithLabelsAndTimestampFormatInputBuilder)?
              updates]) =>
      (new HttpRequestWithLabelsAndTimestampFormatInputBuilder()
            ..update(updates))
          .build();

  _$HttpRequestWithLabelsAndTimestampFormatInput._(
      {required this.defaultFormat,
      required this.memberDateTime,
      required this.memberEpochSeconds,
      required this.memberHttpDate,
      required this.targetDateTime,
      required this.targetEpochSeconds,
      required this.targetHttpDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(defaultFormat,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'defaultFormat');
    BuiltValueNullFieldError.checkNotNull(memberDateTime,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'memberDateTime');
    BuiltValueNullFieldError.checkNotNull(memberEpochSeconds,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'memberEpochSeconds');
    BuiltValueNullFieldError.checkNotNull(memberHttpDate,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'memberHttpDate');
    BuiltValueNullFieldError.checkNotNull(targetDateTime,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'targetDateTime');
    BuiltValueNullFieldError.checkNotNull(targetEpochSeconds,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'targetEpochSeconds');
    BuiltValueNullFieldError.checkNotNull(targetHttpDate,
        'HttpRequestWithLabelsAndTimestampFormatInput', 'targetHttpDate');
  }

  @override
  HttpRequestWithLabelsAndTimestampFormatInput rebuild(
          void Function(HttpRequestWithLabelsAndTimestampFormatInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithLabelsAndTimestampFormatInputBuilder toBuilder() =>
      new HttpRequestWithLabelsAndTimestampFormatInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithLabelsAndTimestampFormatInput &&
        defaultFormat == other.defaultFormat &&
        memberDateTime == other.memberDateTime &&
        memberEpochSeconds == other.memberEpochSeconds &&
        memberHttpDate == other.memberHttpDate &&
        targetDateTime == other.targetDateTime &&
        targetEpochSeconds == other.targetEpochSeconds &&
        targetHttpDate == other.targetHttpDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, defaultFormat.hashCode),
                            memberDateTime.hashCode),
                        memberEpochSeconds.hashCode),
                    memberHttpDate.hashCode),
                targetDateTime.hashCode),
            targetEpochSeconds.hashCode),
        targetHttpDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'HttpRequestWithLabelsAndTimestampFormatInput')
          ..add('defaultFormat', defaultFormat)
          ..add('memberDateTime', memberDateTime)
          ..add('memberEpochSeconds', memberEpochSeconds)
          ..add('memberHttpDate', memberHttpDate)
          ..add('targetDateTime', targetDateTime)
          ..add('targetEpochSeconds', targetEpochSeconds)
          ..add('targetHttpDate', targetHttpDate))
        .toString();
  }
}

class HttpRequestWithLabelsAndTimestampFormatInputBuilder
    implements
        Builder<HttpRequestWithLabelsAndTimestampFormatInput,
            HttpRequestWithLabelsAndTimestampFormatInputBuilder> {
  _$HttpRequestWithLabelsAndTimestampFormatInput? _$v;

  DateTime? _defaultFormat;
  DateTime? get defaultFormat => _$this._defaultFormat;
  set defaultFormat(DateTime? defaultFormat) =>
      _$this._defaultFormat = defaultFormat;

  DateTime? _memberDateTime;
  DateTime? get memberDateTime => _$this._memberDateTime;
  set memberDateTime(DateTime? memberDateTime) =>
      _$this._memberDateTime = memberDateTime;

  DateTime? _memberEpochSeconds;
  DateTime? get memberEpochSeconds => _$this._memberEpochSeconds;
  set memberEpochSeconds(DateTime? memberEpochSeconds) =>
      _$this._memberEpochSeconds = memberEpochSeconds;

  DateTime? _memberHttpDate;
  DateTime? get memberHttpDate => _$this._memberHttpDate;
  set memberHttpDate(DateTime? memberHttpDate) =>
      _$this._memberHttpDate = memberHttpDate;

  DateTime? _targetDateTime;
  DateTime? get targetDateTime => _$this._targetDateTime;
  set targetDateTime(DateTime? targetDateTime) =>
      _$this._targetDateTime = targetDateTime;

  DateTime? _targetEpochSeconds;
  DateTime? get targetEpochSeconds => _$this._targetEpochSeconds;
  set targetEpochSeconds(DateTime? targetEpochSeconds) =>
      _$this._targetEpochSeconds = targetEpochSeconds;

  DateTime? _targetHttpDate;
  DateTime? get targetHttpDate => _$this._targetHttpDate;
  set targetHttpDate(DateTime? targetHttpDate) =>
      _$this._targetHttpDate = targetHttpDate;

  HttpRequestWithLabelsAndTimestampFormatInputBuilder() {
    HttpRequestWithLabelsAndTimestampFormatInput._init(this);
  }

  HttpRequestWithLabelsAndTimestampFormatInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultFormat = $v.defaultFormat;
      _memberDateTime = $v.memberDateTime;
      _memberEpochSeconds = $v.memberEpochSeconds;
      _memberHttpDate = $v.memberHttpDate;
      _targetDateTime = $v.targetDateTime;
      _targetEpochSeconds = $v.targetEpochSeconds;
      _targetHttpDate = $v.targetHttpDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithLabelsAndTimestampFormatInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithLabelsAndTimestampFormatInput;
  }

  @override
  void update(
      void Function(HttpRequestWithLabelsAndTimestampFormatInputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestWithLabelsAndTimestampFormatInput build() {
    final _$result = _$v ??
        new _$HttpRequestWithLabelsAndTimestampFormatInput._(
            defaultFormat: BuiltValueNullFieldError.checkNotNull(
                defaultFormat, 'HttpRequestWithLabelsAndTimestampFormatInput', 'defaultFormat'),
            memberDateTime: BuiltValueNullFieldError.checkNotNull(
                memberDateTime, 'HttpRequestWithLabelsAndTimestampFormatInput', 'memberDateTime'),
            memberEpochSeconds: BuiltValueNullFieldError.checkNotNull(
                memberEpochSeconds, 'HttpRequestWithLabelsAndTimestampFormatInput', 'memberEpochSeconds'),
            memberHttpDate: BuiltValueNullFieldError.checkNotNull(
                memberHttpDate, 'HttpRequestWithLabelsAndTimestampFormatInput', 'memberHttpDate'),
            targetDateTime: BuiltValueNullFieldError.checkNotNull(
                targetDateTime, 'HttpRequestWithLabelsAndTimestampFormatInput', 'targetDateTime'),
            targetEpochSeconds: BuiltValueNullFieldError.checkNotNull(
                targetEpochSeconds,
                'HttpRequestWithLabelsAndTimestampFormatInput',
                'targetEpochSeconds'),
            targetHttpDate: BuiltValueNullFieldError.checkNotNull(targetHttpDate, 'HttpRequestWithLabelsAndTimestampFormatInput', 'targetHttpDate'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithLabelsAndTimestampFormatInputPayload
    extends HttpRequestWithLabelsAndTimestampFormatInputPayload {
  factory _$HttpRequestWithLabelsAndTimestampFormatInputPayload(
          [void Function(
                  HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder)?
              updates]) =>
      (new HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder()
            ..update(updates))
          .build();

  _$HttpRequestWithLabelsAndTimestampFormatInputPayload._() : super._();

  @override
  HttpRequestWithLabelsAndTimestampFormatInputPayload rebuild(
          void Function(
                  HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder toBuilder() =>
      new HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithLabelsAndTimestampFormatInputPayload;
  }

  @override
  int get hashCode {
    return 200349434;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(
            'HttpRequestWithLabelsAndTimestampFormatInputPayload')
        .toString();
  }
}

class HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder
    implements
        Builder<HttpRequestWithLabelsAndTimestampFormatInputPayload,
            HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder> {
  _$HttpRequestWithLabelsAndTimestampFormatInputPayload? _$v;

  HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder() {
    HttpRequestWithLabelsAndTimestampFormatInputPayload._init(this);
  }

  @override
  void replace(HttpRequestWithLabelsAndTimestampFormatInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithLabelsAndTimestampFormatInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestWithLabelsAndTimestampFormatInputPayload build() {
    final _$result =
        _$v ?? new _$HttpRequestWithLabelsAndTimestampFormatInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
