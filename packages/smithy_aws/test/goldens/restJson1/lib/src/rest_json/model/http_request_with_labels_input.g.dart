// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.http_request_with_labels_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithLabelsInput extends HttpRequestWithLabelsInput {
  @override
  final bool boolean;
  @override
  final double double$;
  @override
  final double float;
  @override
  final int integer;
  @override
  final _i3.Int64 long;
  @override
  final int short;
  @override
  final String string;
  @override
  final DateTime timestamp;

  factory _$HttpRequestWithLabelsInput(
          [void Function(HttpRequestWithLabelsInputBuilder)? updates]) =>
      (new HttpRequestWithLabelsInputBuilder()..update(updates)).build();

  _$HttpRequestWithLabelsInput._(
      {required this.boolean,
      required this.double$,
      required this.float,
      required this.integer,
      required this.long,
      required this.short,
      required this.string,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        boolean, 'HttpRequestWithLabelsInput', 'boolean');
    BuiltValueNullFieldError.checkNotNull(
        double$, 'HttpRequestWithLabelsInput', 'double\$');
    BuiltValueNullFieldError.checkNotNull(
        float, 'HttpRequestWithLabelsInput', 'float');
    BuiltValueNullFieldError.checkNotNull(
        integer, 'HttpRequestWithLabelsInput', 'integer');
    BuiltValueNullFieldError.checkNotNull(
        long, 'HttpRequestWithLabelsInput', 'long');
    BuiltValueNullFieldError.checkNotNull(
        short, 'HttpRequestWithLabelsInput', 'short');
    BuiltValueNullFieldError.checkNotNull(
        string, 'HttpRequestWithLabelsInput', 'string');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, 'HttpRequestWithLabelsInput', 'timestamp');
  }

  @override
  HttpRequestWithLabelsInput rebuild(
          void Function(HttpRequestWithLabelsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithLabelsInputBuilder toBuilder() =>
      new HttpRequestWithLabelsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithLabelsInput &&
        boolean == other.boolean &&
        double$ == other.double$ &&
        float == other.float &&
        integer == other.integer &&
        long == other.long &&
        short == other.short &&
        string == other.string &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, boolean.hashCode), double$.hashCode),
                            float.hashCode),
                        integer.hashCode),
                    long.hashCode),
                short.hashCode),
            string.hashCode),
        timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpRequestWithLabelsInput')
          ..add('boolean', boolean)
          ..add('double\$', double$)
          ..add('float', float)
          ..add('integer', integer)
          ..add('long', long)
          ..add('short', short)
          ..add('string', string)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class HttpRequestWithLabelsInputBuilder
    implements
        Builder<HttpRequestWithLabelsInput, HttpRequestWithLabelsInputBuilder> {
  _$HttpRequestWithLabelsInput? _$v;

  bool? _boolean;
  bool? get boolean => _$this._boolean;
  set boolean(bool? boolean) => _$this._boolean = boolean;

  double? _double$;
  double? get double$ => _$this._double$;
  set double$(double? double$) => _$this._double$ = double$;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _integer;
  int? get integer => _$this._integer;
  set integer(int? integer) => _$this._integer = integer;

  _i3.Int64? _long;
  _i3.Int64? get long => _$this._long;
  set long(_i3.Int64? long) => _$this._long = long;

  int? _short;
  int? get short => _$this._short;
  set short(int? short) => _$this._short = short;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  HttpRequestWithLabelsInputBuilder() {
    HttpRequestWithLabelsInput._init(this);
  }

  HttpRequestWithLabelsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _boolean = $v.boolean;
      _double$ = $v.double$;
      _float = $v.float;
      _integer = $v.integer;
      _long = $v.long;
      _short = $v.short;
      _string = $v.string;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithLabelsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithLabelsInput;
  }

  @override
  void update(void Function(HttpRequestWithLabelsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestWithLabelsInput build() {
    final _$result = _$v ??
        new _$HttpRequestWithLabelsInput._(
            boolean: BuiltValueNullFieldError.checkNotNull(
                boolean, 'HttpRequestWithLabelsInput', 'boolean'),
            double$: BuiltValueNullFieldError.checkNotNull(
                double$, 'HttpRequestWithLabelsInput', 'double\$'),
            float: BuiltValueNullFieldError.checkNotNull(
                float, 'HttpRequestWithLabelsInput', 'float'),
            integer: BuiltValueNullFieldError.checkNotNull(
                integer, 'HttpRequestWithLabelsInput', 'integer'),
            long: BuiltValueNullFieldError.checkNotNull(
                long, 'HttpRequestWithLabelsInput', 'long'),
            short: BuiltValueNullFieldError.checkNotNull(
                short, 'HttpRequestWithLabelsInput', 'short'),
            string: BuiltValueNullFieldError.checkNotNull(
                string, 'HttpRequestWithLabelsInput', 'string'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, 'HttpRequestWithLabelsInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithLabelsInputPayload
    extends HttpRequestWithLabelsInputPayload {
  factory _$HttpRequestWithLabelsInputPayload(
          [void Function(HttpRequestWithLabelsInputPayloadBuilder)? updates]) =>
      (new HttpRequestWithLabelsInputPayloadBuilder()..update(updates)).build();

  _$HttpRequestWithLabelsInputPayload._() : super._();

  @override
  HttpRequestWithLabelsInputPayload rebuild(
          void Function(HttpRequestWithLabelsInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithLabelsInputPayloadBuilder toBuilder() =>
      new HttpRequestWithLabelsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithLabelsInputPayload;
  }

  @override
  int get hashCode {
    return 251815434;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('HttpRequestWithLabelsInputPayload')
        .toString();
  }
}

class HttpRequestWithLabelsInputPayloadBuilder
    implements
        Builder<HttpRequestWithLabelsInputPayload,
            HttpRequestWithLabelsInputPayloadBuilder> {
  _$HttpRequestWithLabelsInputPayload? _$v;

  HttpRequestWithLabelsInputPayloadBuilder() {
    HttpRequestWithLabelsInputPayload._init(this);
  }

  @override
  void replace(HttpRequestWithLabelsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithLabelsInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithLabelsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestWithLabelsInputPayload build() {
    final _$result = _$v ?? new _$HttpRequestWithLabelsInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new