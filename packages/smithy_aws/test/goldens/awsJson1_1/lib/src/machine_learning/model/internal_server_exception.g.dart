// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.machine_learning.model.internal_server_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternalServerException extends InternalServerException {
  @override
  final int? code;
  @override
  final String? message;

  factory _$InternalServerException(
          [void Function(InternalServerExceptionBuilder)? updates]) =>
      (new InternalServerExceptionBuilder()..update(updates)).build();

  _$InternalServerException._({this.code, this.message}) : super._();

  @override
  InternalServerException rebuild(
          void Function(InternalServerExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InternalServerExceptionBuilder toBuilder() =>
      new InternalServerExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternalServerException &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InternalServerException')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class InternalServerExceptionBuilder
    implements
        Builder<InternalServerException, InternalServerExceptionBuilder> {
  _$InternalServerException? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InternalServerExceptionBuilder() {
    InternalServerException._init(this);
  }

  InternalServerExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InternalServerException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InternalServerException;
  }

  @override
  void update(void Function(InternalServerExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InternalServerException build() {
    final _$result =
        _$v ?? new _$InternalServerException._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
