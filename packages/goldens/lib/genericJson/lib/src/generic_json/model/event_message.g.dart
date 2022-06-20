// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_json.generic_json.model.event_message;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventMessage extends EventMessage {
  @override
  final String message;

  factory _$EventMessage([void Function(EventMessageBuilder)? updates]) =>
      (new EventMessageBuilder()..update(updates))._build();

  _$EventMessage._({required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, r'EventMessage', 'message');
  }

  @override
  EventMessage rebuild(void Function(EventMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventMessageBuilder toBuilder() => new EventMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventMessage && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class EventMessageBuilder
    implements Builder<EventMessage, EventMessageBuilder> {
  _$EventMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EventMessageBuilder() {
    EventMessage._init(this);
  }

  EventMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventMessage;
  }

  @override
  void update(void Function(EventMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventMessage build() => _build();

  _$EventMessage _build() {
    final _$result = _$v ??
        new _$EventMessage._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'EventMessage', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
