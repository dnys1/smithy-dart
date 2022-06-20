// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_json.generic_json.model.event_stream_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStreamInputOutput extends EventStreamInputOutput {
  @override
  final _i2.Event? event;

  factory _$EventStreamInputOutput(
          [void Function(EventStreamInputOutputBuilder)? updates]) =>
      (new EventStreamInputOutputBuilder()..update(updates))._build();

  _$EventStreamInputOutput._({this.event}) : super._();

  @override
  EventStreamInputOutput rebuild(
          void Function(EventStreamInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStreamInputOutputBuilder toBuilder() =>
      new EventStreamInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStreamInputOutput && event == other.event;
  }

  @override
  int get hashCode {
    return $jf($jc(0, event.hashCode));
  }
}

class EventStreamInputOutputBuilder
    implements Builder<EventStreamInputOutput, EventStreamInputOutputBuilder> {
  _$EventStreamInputOutput? _$v;

  _i2.Event? _event;
  _i2.Event? get event => _$this._event;
  set event(_i2.Event? event) => _$this._event = event;

  EventStreamInputOutputBuilder() {
    EventStreamInputOutput._init(this);
  }

  EventStreamInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStreamInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventStreamInputOutput;
  }

  @override
  void update(void Function(EventStreamInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStreamInputOutput build() => _build();

  _$EventStreamInputOutput _build() {
    final _$result = _$v ?? new _$EventStreamInputOutput._(event: event);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
