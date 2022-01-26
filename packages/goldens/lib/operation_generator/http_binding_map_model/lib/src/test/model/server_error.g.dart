// GENERATED CODE - DO NOT MODIFY BY HAND

part of http_binding_map_model.test.model.server_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerError extends ServerError {
  @override
  final String message;

  factory _$ServerError([void Function(ServerErrorBuilder)? updates]) =>
      (new ServerErrorBuilder()..update(updates)).build();

  _$ServerError._({required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, 'ServerError', 'message');
  }

  @override
  ServerError rebuild(void Function(ServerErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerErrorBuilder toBuilder() => new ServerErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class ServerErrorBuilder implements Builder<ServerError, ServerErrorBuilder> {
  _$ServerError? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ServerErrorBuilder() {
    ServerError._init(this);
  }

  ServerErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerError;
  }

  @override
  void update(void Function(ServerErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServerError build() {
    final _$result = _$v ??
        new _$ServerError._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'ServerError', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
