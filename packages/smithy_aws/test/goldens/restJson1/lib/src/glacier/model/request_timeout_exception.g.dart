// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.glacier.model.request_timeout_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestTimeoutException extends RequestTimeoutException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? type;

  factory _$RequestTimeoutException(
          [void Function(RequestTimeoutExceptionBuilder)? updates]) =>
      (new RequestTimeoutExceptionBuilder()..update(updates)).build();

  _$RequestTimeoutException._({this.code, this.message, this.type}) : super._();

  @override
  RequestTimeoutException rebuild(
          void Function(RequestTimeoutExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestTimeoutExceptionBuilder toBuilder() =>
      new RequestTimeoutExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestTimeoutException &&
        code == other.code &&
        message == other.message &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), message.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RequestTimeoutException')
          ..add('code', code)
          ..add('message', message)
          ..add('type', type))
        .toString();
  }
}

class RequestTimeoutExceptionBuilder
    implements
        Builder<RequestTimeoutException, RequestTimeoutExceptionBuilder> {
  _$RequestTimeoutException? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  RequestTimeoutExceptionBuilder() {
    RequestTimeoutException._init(this);
  }

  RequestTimeoutExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestTimeoutException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestTimeoutException;
  }

  @override
  void update(void Function(RequestTimeoutExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RequestTimeoutException build() {
    final _$result = _$v ??
        new _$RequestTimeoutException._(
            code: code, message: message, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
