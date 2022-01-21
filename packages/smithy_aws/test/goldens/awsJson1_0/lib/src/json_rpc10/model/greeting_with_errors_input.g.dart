// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc10.model.greeting_with_errors_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GreetingWithErrorsInput extends GreetingWithErrorsInput {
  @override
  final String? greeting;

  factory _$GreetingWithErrorsInput(
          [void Function(GreetingWithErrorsInputBuilder)? updates]) =>
      (new GreetingWithErrorsInputBuilder()..update(updates)).build();

  _$GreetingWithErrorsInput._({this.greeting}) : super._();

  @override
  GreetingWithErrorsInput rebuild(
          void Function(GreetingWithErrorsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreetingWithErrorsInputBuilder toBuilder() =>
      new GreetingWithErrorsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreetingWithErrorsInput && greeting == other.greeting;
  }

  @override
  int get hashCode {
    return $jf($jc(0, greeting.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GreetingWithErrorsInput')
          ..add('greeting', greeting))
        .toString();
  }
}

class GreetingWithErrorsInputBuilder
    implements
        Builder<GreetingWithErrorsInput, GreetingWithErrorsInputBuilder> {
  _$GreetingWithErrorsInput? _$v;

  String? _greeting;
  String? get greeting => _$this._greeting;
  set greeting(String? greeting) => _$this._greeting = greeting;

  GreetingWithErrorsInputBuilder() {
    GreetingWithErrorsInput._init(this);
  }

  GreetingWithErrorsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _greeting = $v.greeting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreetingWithErrorsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreetingWithErrorsInput;
  }

  @override
  void update(void Function(GreetingWithErrorsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GreetingWithErrorsInput build() {
    final _$result = _$v ?? new _$GreetingWithErrorsInput._(greeting: greeting);
    replace(_$result);
    return _$result;
  }
}

class _$GreetingWithErrorsInputPayload extends GreetingWithErrorsInputPayload {
  @override
  final String? greeting;

  factory _$GreetingWithErrorsInputPayload(
          [void Function(GreetingWithErrorsInputPayloadBuilder)? updates]) =>
      (new GreetingWithErrorsInputPayloadBuilder()..update(updates)).build();

  _$GreetingWithErrorsInputPayload._({this.greeting}) : super._();

  @override
  GreetingWithErrorsInputPayload rebuild(
          void Function(GreetingWithErrorsInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreetingWithErrorsInputPayloadBuilder toBuilder() =>
      new GreetingWithErrorsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreetingWithErrorsInputPayload &&
        greeting == other.greeting;
  }

  @override
  int get hashCode {
    return $jf($jc(0, greeting.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GreetingWithErrorsInputPayload')
          ..add('greeting', greeting))
        .toString();
  }
}

class GreetingWithErrorsInputPayloadBuilder
    implements
        Builder<GreetingWithErrorsInputPayload,
            GreetingWithErrorsInputPayloadBuilder> {
  _$GreetingWithErrorsInputPayload? _$v;

  String? _greeting;
  String? get greeting => _$this._greeting;
  set greeting(String? greeting) => _$this._greeting = greeting;

  GreetingWithErrorsInputPayloadBuilder() {
    GreetingWithErrorsInputPayload._init(this);
  }

  GreetingWithErrorsInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _greeting = $v.greeting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreetingWithErrorsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreetingWithErrorsInputPayload;
  }

  @override
  void update(void Function(GreetingWithErrorsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GreetingWithErrorsInputPayload build() {
    final _$result =
        _$v ?? new _$GreetingWithErrorsInputPayload._(greeting: greeting);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new