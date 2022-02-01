// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.glacier.model.service_unavailable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceUnavailableException extends ServiceUnavailableException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? type;

  factory _$ServiceUnavailableException(
          [void Function(ServiceUnavailableExceptionBuilder)? updates]) =>
      (new ServiceUnavailableExceptionBuilder()..update(updates)).build();

  _$ServiceUnavailableException._({this.code, this.message, this.type})
      : super._();

  @override
  ServiceUnavailableException rebuild(
          void Function(ServiceUnavailableExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceUnavailableExceptionBuilder toBuilder() =>
      new ServiceUnavailableExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceUnavailableException &&
        code == other.code &&
        message == other.message &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), message.hashCode), type.hashCode));
  }
}

class ServiceUnavailableExceptionBuilder
    implements
        Builder<ServiceUnavailableException,
            ServiceUnavailableExceptionBuilder> {
  _$ServiceUnavailableException? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ServiceUnavailableExceptionBuilder() {
    ServiceUnavailableException._init(this);
  }

  ServiceUnavailableExceptionBuilder get _$this {
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
  void replace(ServiceUnavailableException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceUnavailableException;
  }

  @override
  void update(void Function(ServiceUnavailableExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceUnavailableException build() {
    final _$result = _$v ??
        new _$ServiceUnavailableException._(
            code: code, message: message, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new