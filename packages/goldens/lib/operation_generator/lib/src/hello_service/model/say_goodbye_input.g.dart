// GENERATED CODE - DO NOT MODIFY BY HAND

part of operation_generator.hello_service.model.say_goodbye_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SayGoodbyeInput extends SayGoodbyeInput {
  factory _$SayGoodbyeInput([void Function(SayGoodbyeInputBuilder)? updates]) =>
      (new SayGoodbyeInputBuilder()..update(updates)).build();

  _$SayGoodbyeInput._() : super._();

  @override
  SayGoodbyeInput rebuild(void Function(SayGoodbyeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SayGoodbyeInputBuilder toBuilder() =>
      new SayGoodbyeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SayGoodbyeInput;
  }

  @override
  int get hashCode {
    return 963250681;
  }
}

class SayGoodbyeInputBuilder
    implements Builder<SayGoodbyeInput, SayGoodbyeInputBuilder> {
  _$SayGoodbyeInput? _$v;

  SayGoodbyeInputBuilder() {
    SayGoodbyeInput._init(this);
  }

  @override
  void replace(SayGoodbyeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SayGoodbyeInput;
  }

  @override
  void update(void Function(SayGoodbyeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SayGoodbyeInput build() {
    final _$result = _$v ?? new _$SayGoodbyeInput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
