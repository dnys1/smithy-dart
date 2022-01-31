// GENERATED CODE - DO NOT MODIFY BY HAND

part of operation_generator.goodbye_service.model.say_goodbye_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SayGoodbyeOutput extends SayGoodbyeOutput {
  @override
  final String? farewell;

  factory _$SayGoodbyeOutput(
          [void Function(SayGoodbyeOutputBuilder)? updates]) =>
      (new SayGoodbyeOutputBuilder()..update(updates)).build();

  _$SayGoodbyeOutput._({this.farewell}) : super._();

  @override
  SayGoodbyeOutput rebuild(void Function(SayGoodbyeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SayGoodbyeOutputBuilder toBuilder() =>
      new SayGoodbyeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SayGoodbyeOutput && farewell == other.farewell;
  }

  @override
  int get hashCode {
    return $jf($jc(0, farewell.hashCode));
  }
}

class SayGoodbyeOutputBuilder
    implements Builder<SayGoodbyeOutput, SayGoodbyeOutputBuilder> {
  _$SayGoodbyeOutput? _$v;

  String? _farewell;
  String? get farewell => _$this._farewell;
  set farewell(String? farewell) => _$this._farewell = farewell;

  SayGoodbyeOutputBuilder() {
    SayGoodbyeOutput._init(this);
  }

  SayGoodbyeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _farewell = $v.farewell;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SayGoodbyeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SayGoodbyeOutput;
  }

  @override
  void update(void Function(SayGoodbyeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SayGoodbyeOutput build() {
    final _$result = _$v ?? new _$SayGoodbyeOutput._(farewell: farewell);
    replace(_$result);
    return _$result;
  }
}

class _$SayGoodbyeOutputPayload extends SayGoodbyeOutputPayload {
  factory _$SayGoodbyeOutputPayload(
          [void Function(SayGoodbyeOutputPayloadBuilder)? updates]) =>
      (new SayGoodbyeOutputPayloadBuilder()..update(updates)).build();

  _$SayGoodbyeOutputPayload._() : super._();

  @override
  SayGoodbyeOutputPayload rebuild(
          void Function(SayGoodbyeOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SayGoodbyeOutputPayloadBuilder toBuilder() =>
      new SayGoodbyeOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SayGoodbyeOutputPayload;
  }

  @override
  int get hashCode {
    return 106194397;
  }
}

class SayGoodbyeOutputPayloadBuilder
    implements
        Builder<SayGoodbyeOutputPayload, SayGoodbyeOutputPayloadBuilder> {
  _$SayGoodbyeOutputPayload? _$v;

  SayGoodbyeOutputPayloadBuilder() {
    SayGoodbyeOutputPayload._init(this);
  }

  @override
  void replace(SayGoodbyeOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SayGoodbyeOutputPayload;
  }

  @override
  void update(void Function(SayGoodbyeOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SayGoodbyeOutputPayload build() {
    final _$result = _$v ?? new _$SayGoodbyeOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
