// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.constant_query_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConstantQueryStringInput extends ConstantQueryStringInput {
  @override
  final String hello;

  factory _$ConstantQueryStringInput(
          [void Function(ConstantQueryStringInputBuilder)? updates]) =>
      (new ConstantQueryStringInputBuilder()..update(updates)).build();

  _$ConstantQueryStringInput._({required this.hello}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hello, 'ConstantQueryStringInput', 'hello');
  }

  @override
  ConstantQueryStringInput rebuild(
          void Function(ConstantQueryStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstantQueryStringInputBuilder toBuilder() =>
      new ConstantQueryStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantQueryStringInput && hello == other.hello;
  }

  @override
  int get hashCode {
    return $jf($jc(0, hello.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConstantQueryStringInput')
          ..add('hello', hello))
        .toString();
  }
}

class ConstantQueryStringInputBuilder
    implements
        Builder<ConstantQueryStringInput, ConstantQueryStringInputBuilder> {
  _$ConstantQueryStringInput? _$v;

  String? _hello;
  String? get hello => _$this._hello;
  set hello(String? hello) => _$this._hello = hello;

  ConstantQueryStringInputBuilder() {
    ConstantQueryStringInput._init(this);
  }

  ConstantQueryStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hello = $v.hello;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConstantQueryStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstantQueryStringInput;
  }

  @override
  void update(void Function(ConstantQueryStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConstantQueryStringInput build() {
    final _$result = _$v ??
        new _$ConstantQueryStringInput._(
            hello: BuiltValueNullFieldError.checkNotNull(
                hello, 'ConstantQueryStringInput', 'hello'));
    replace(_$result);
    return _$result;
  }
}

class _$ConstantQueryStringInputPayload
    extends ConstantQueryStringInputPayload {
  factory _$ConstantQueryStringInputPayload(
          [void Function(ConstantQueryStringInputPayloadBuilder)? updates]) =>
      (new ConstantQueryStringInputPayloadBuilder()..update(updates)).build();

  _$ConstantQueryStringInputPayload._() : super._();

  @override
  ConstantQueryStringInputPayload rebuild(
          void Function(ConstantQueryStringInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstantQueryStringInputPayloadBuilder toBuilder() =>
      new ConstantQueryStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantQueryStringInputPayload;
  }

  @override
  int get hashCode {
    return 646295052;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ConstantQueryStringInputPayload')
        .toString();
  }
}

class ConstantQueryStringInputPayloadBuilder
    implements
        Builder<ConstantQueryStringInputPayload,
            ConstantQueryStringInputPayloadBuilder> {
  _$ConstantQueryStringInputPayload? _$v;

  ConstantQueryStringInputPayloadBuilder() {
    ConstantQueryStringInputPayload._init(this);
  }

  @override
  void replace(ConstantQueryStringInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstantQueryStringInputPayload;
  }

  @override
  void update(void Function(ConstantQueryStringInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConstantQueryStringInputPayload build() {
    final _$result = _$v ?? new _$ConstantQueryStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
