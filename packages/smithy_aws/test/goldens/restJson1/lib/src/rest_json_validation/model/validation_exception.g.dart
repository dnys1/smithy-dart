// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_validation.model.validation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationException extends ValidationException {
  @override
  final _i3.BuiltList<_i4.ValidationExceptionField>? fieldList;
  @override
  final String message;

  factory _$ValidationException(
          [void Function(ValidationExceptionBuilder)? updates]) =>
      (new ValidationExceptionBuilder()..update(updates)).build();

  _$ValidationException._({this.fieldList, required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        message, 'ValidationException', 'message');
  }

  @override
  ValidationException rebuild(
          void Function(ValidationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationExceptionBuilder toBuilder() =>
      new ValidationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationException &&
        fieldList == other.fieldList &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, fieldList.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValidationException')
          ..add('fieldList', fieldList)
          ..add('message', message))
        .toString();
  }
}

class ValidationExceptionBuilder
    implements Builder<ValidationException, ValidationExceptionBuilder> {
  _$ValidationException? _$v;

  _i3.ListBuilder<_i4.ValidationExceptionField>? _fieldList;
  _i3.ListBuilder<_i4.ValidationExceptionField> get fieldList =>
      _$this._fieldList ??= new _i3.ListBuilder<_i4.ValidationExceptionField>();
  set fieldList(_i3.ListBuilder<_i4.ValidationExceptionField>? fieldList) =>
      _$this._fieldList = fieldList;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ValidationExceptionBuilder() {
    ValidationException._init(this);
  }

  ValidationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldList = $v.fieldList?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationException;
  }

  @override
  void update(void Function(ValidationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidationException build() {
    _$ValidationException _$result;
    try {
      _$result = _$v ??
          new _$ValidationException._(
              fieldList: _fieldList?.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'ValidationException', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldList';
        _fieldList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ValidationException', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
