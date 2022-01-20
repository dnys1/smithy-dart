// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc10.model.foo_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FooError extends FooError {
  factory _$FooError([void Function(FooErrorBuilder)? updates]) =>
      (new FooErrorBuilder()..update(updates)).build();

  _$FooError._() : super._();

  @override
  FooError rebuild(void Function(FooErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooErrorBuilder toBuilder() => new FooErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooError;
  }

  @override
  int get hashCode {
    return 445467195;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('FooError').toString();
  }
}

class FooErrorBuilder implements Builder<FooError, FooErrorBuilder> {
  _$FooError? _$v;

  FooErrorBuilder() {
    FooError._init(this);
  }

  @override
  void replace(FooError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FooError;
  }

  @override
  void update(void Function(FooErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FooError build() {
    final _$result = _$v ?? new _$FooError._();
    replace(_$result);
    return _$result;
  }
}

class _$FooErrorPayload extends FooErrorPayload {
  factory _$FooErrorPayload([void Function(FooErrorPayloadBuilder)? updates]) =>
      (new FooErrorPayloadBuilder()..update(updates)).build();

  _$FooErrorPayload._() : super._();

  @override
  FooErrorPayload rebuild(void Function(FooErrorPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooErrorPayloadBuilder toBuilder() =>
      new FooErrorPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooErrorPayload;
  }

  @override
  int get hashCode {
    return 455468423;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('FooErrorPayload').toString();
  }
}

class FooErrorPayloadBuilder
    implements Builder<FooErrorPayload, FooErrorPayloadBuilder> {
  _$FooErrorPayload? _$v;

  FooErrorPayloadBuilder() {
    FooErrorPayload._init(this);
  }

  @override
  void replace(FooErrorPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FooErrorPayload;
  }

  @override
  void update(void Function(FooErrorPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FooErrorPayload build() {
    final _$result = _$v ?? new _$FooErrorPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
