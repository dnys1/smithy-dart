// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.api_gateway.model.unauthorized_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnauthorizedException extends UnauthorizedException {
  @override
  final String? message;

  factory _$UnauthorizedException(
          [void Function(UnauthorizedExceptionBuilder)? updates]) =>
      (new UnauthorizedExceptionBuilder()..update(updates)).build();

  _$UnauthorizedException._({this.message}) : super._();

  @override
  UnauthorizedException rebuild(
          void Function(UnauthorizedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnauthorizedExceptionBuilder toBuilder() =>
      new UnauthorizedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnauthorizedException && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class UnauthorizedExceptionBuilder
    implements Builder<UnauthorizedException, UnauthorizedExceptionBuilder> {
  _$UnauthorizedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  UnauthorizedExceptionBuilder() {
    UnauthorizedException._init(this);
  }

  UnauthorizedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnauthorizedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnauthorizedException;
  }

  @override
  void update(void Function(UnauthorizedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnauthorizedException build() {
    final _$result = _$v ?? new _$UnauthorizedException._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
