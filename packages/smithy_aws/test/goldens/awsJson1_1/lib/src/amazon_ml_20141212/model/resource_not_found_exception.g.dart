// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.amazon_ml_20141212.model.resource_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceNotFoundException extends ResourceNotFoundException {
  @override
  final int? code;
  @override
  final String? message;

  factory _$ResourceNotFoundException(
          [void Function(ResourceNotFoundExceptionBuilder)? updates]) =>
      (new ResourceNotFoundExceptionBuilder()..update(updates)).build();

  _$ResourceNotFoundException._({this.code, this.message}) : super._();

  @override
  ResourceNotFoundException rebuild(
          void Function(ResourceNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceNotFoundExceptionBuilder toBuilder() =>
      new ResourceNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceNotFoundException &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResourceNotFoundException')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class ResourceNotFoundExceptionBuilder
    implements
        Builder<ResourceNotFoundException, ResourceNotFoundExceptionBuilder> {
  _$ResourceNotFoundException? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ResourceNotFoundExceptionBuilder() {
    ResourceNotFoundException._init(this);
  }

  ResourceNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceNotFoundException;
  }

  @override
  void update(void Function(ResourceNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResourceNotFoundException build() {
    final _$result =
        _$v ?? new _$ResourceNotFoundException._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
