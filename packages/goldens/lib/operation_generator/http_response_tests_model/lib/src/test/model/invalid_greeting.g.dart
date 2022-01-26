// GENERATED CODE - DO NOT MODIFY BY HAND

part of http_response_tests_model.test.model.invalid_greeting;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidGreeting extends InvalidGreeting {
  @override
  final String? foo;
  @override
  final String? message;

  factory _$InvalidGreeting([void Function(InvalidGreetingBuilder)? updates]) =>
      (new InvalidGreetingBuilder()..update(updates)).build();

  _$InvalidGreeting._({this.foo, this.message}) : super._();

  @override
  InvalidGreeting rebuild(void Function(InvalidGreetingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidGreetingBuilder toBuilder() =>
      new InvalidGreetingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidGreeting &&
        foo == other.foo &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foo.hashCode), message.hashCode));
  }
}

class InvalidGreetingBuilder
    implements Builder<InvalidGreeting, InvalidGreetingBuilder> {
  _$InvalidGreeting? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvalidGreetingBuilder() {
    InvalidGreeting._init(this);
  }

  InvalidGreetingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidGreeting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidGreeting;
  }

  @override
  void update(void Function(InvalidGreetingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InvalidGreeting build() {
    final _$result = _$v ?? new _$InvalidGreeting._(foo: foo, message: message);
    replace(_$result);
    return _$result;
  }
}

class _$InvalidGreetingPayload extends InvalidGreetingPayload {
  @override
  final String? message;

  factory _$InvalidGreetingPayload(
          [void Function(InvalidGreetingPayloadBuilder)? updates]) =>
      (new InvalidGreetingPayloadBuilder()..update(updates)).build();

  _$InvalidGreetingPayload._({this.message}) : super._();

  @override
  InvalidGreetingPayload rebuild(
          void Function(InvalidGreetingPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidGreetingPayloadBuilder toBuilder() =>
      new InvalidGreetingPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidGreetingPayload && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class InvalidGreetingPayloadBuilder
    implements Builder<InvalidGreetingPayload, InvalidGreetingPayloadBuilder> {
  _$InvalidGreetingPayload? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvalidGreetingPayloadBuilder() {
    InvalidGreetingPayload._init(this);
  }

  InvalidGreetingPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidGreetingPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidGreetingPayload;
  }

  @override
  void update(void Function(InvalidGreetingPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InvalidGreetingPayload build() {
    final _$result = _$v ?? new _$InvalidGreetingPayload._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
