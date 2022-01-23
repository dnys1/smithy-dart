// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.http_request_with_float_labels_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithFloatLabelsInput
    extends HttpRequestWithFloatLabelsInput {
  @override
  final double double$;
  @override
  final double float;

  factory _$HttpRequestWithFloatLabelsInput(
          [void Function(HttpRequestWithFloatLabelsInputBuilder)? updates]) =>
      (new HttpRequestWithFloatLabelsInputBuilder()..update(updates)).build();

  _$HttpRequestWithFloatLabelsInput._(
      {required this.double$, required this.float})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        double$, 'HttpRequestWithFloatLabelsInput', 'double\$');
    BuiltValueNullFieldError.checkNotNull(
        float, 'HttpRequestWithFloatLabelsInput', 'float');
  }

  @override
  HttpRequestWithFloatLabelsInput rebuild(
          void Function(HttpRequestWithFloatLabelsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithFloatLabelsInputBuilder toBuilder() =>
      new HttpRequestWithFloatLabelsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithFloatLabelsInput &&
        double$ == other.double$ &&
        float == other.float;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, double$.hashCode), float.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpRequestWithFloatLabelsInput')
          ..add('double\$', double$)
          ..add('float', float))
        .toString();
  }
}

class HttpRequestWithFloatLabelsInputBuilder
    implements
        Builder<HttpRequestWithFloatLabelsInput,
            HttpRequestWithFloatLabelsInputBuilder> {
  _$HttpRequestWithFloatLabelsInput? _$v;

  double? _double$;
  double? get double$ => _$this._double$;
  set double$(double? double$) => _$this._double$ = double$;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  HttpRequestWithFloatLabelsInputBuilder() {
    HttpRequestWithFloatLabelsInput._init(this);
  }

  HttpRequestWithFloatLabelsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _double$ = $v.double$;
      _float = $v.float;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithFloatLabelsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithFloatLabelsInput;
  }

  @override
  void update(void Function(HttpRequestWithFloatLabelsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestWithFloatLabelsInput build() {
    final _$result = _$v ??
        new _$HttpRequestWithFloatLabelsInput._(
            double$: BuiltValueNullFieldError.checkNotNull(
                double$, 'HttpRequestWithFloatLabelsInput', 'double\$'),
            float: BuiltValueNullFieldError.checkNotNull(
                float, 'HttpRequestWithFloatLabelsInput', 'float'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithFloatLabelsInputPayload
    extends HttpRequestWithFloatLabelsInputPayload {
  factory _$HttpRequestWithFloatLabelsInputPayload(
          [void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)?
              updates]) =>
      (new HttpRequestWithFloatLabelsInputPayloadBuilder()..update(updates))
          .build();

  _$HttpRequestWithFloatLabelsInputPayload._() : super._();

  @override
  HttpRequestWithFloatLabelsInputPayload rebuild(
          void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithFloatLabelsInputPayloadBuilder toBuilder() =>
      new HttpRequestWithFloatLabelsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithFloatLabelsInputPayload;
  }

  @override
  int get hashCode {
    return 113596152;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('HttpRequestWithFloatLabelsInputPayload')
        .toString();
  }
}

class HttpRequestWithFloatLabelsInputPayloadBuilder
    implements
        Builder<HttpRequestWithFloatLabelsInputPayload,
            HttpRequestWithFloatLabelsInputPayloadBuilder> {
  _$HttpRequestWithFloatLabelsInputPayload? _$v;

  HttpRequestWithFloatLabelsInputPayloadBuilder() {
    HttpRequestWithFloatLabelsInputPayload._init(this);
  }

  @override
  void replace(HttpRequestWithFloatLabelsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithFloatLabelsInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestWithFloatLabelsInputPayload build() {
    final _$result = _$v ?? new _$HttpRequestWithFloatLabelsInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new