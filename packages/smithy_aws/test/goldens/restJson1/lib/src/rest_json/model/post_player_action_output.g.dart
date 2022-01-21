// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.post_player_action_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostPlayerActionOutput extends PostPlayerActionOutput {
  @override
  final _i2.PlayerAction action;

  factory _$PostPlayerActionOutput(
          [void Function(PostPlayerActionOutputBuilder)? updates]) =>
      (new PostPlayerActionOutputBuilder()..update(updates)).build();

  _$PostPlayerActionOutput._({required this.action}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        action, 'PostPlayerActionOutput', 'action');
  }

  @override
  PostPlayerActionOutput rebuild(
          void Function(PostPlayerActionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostPlayerActionOutputBuilder toBuilder() =>
      new PostPlayerActionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPlayerActionOutput && action == other.action;
  }

  @override
  int get hashCode {
    return $jf($jc(0, action.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostPlayerActionOutput')
          ..add('action', action))
        .toString();
  }
}

class PostPlayerActionOutputBuilder
    implements Builder<PostPlayerActionOutput, PostPlayerActionOutputBuilder> {
  _$PostPlayerActionOutput? _$v;

  _i2.PlayerAction? _action;
  _i2.PlayerAction? get action => _$this._action;
  set action(_i2.PlayerAction? action) => _$this._action = action;

  PostPlayerActionOutputBuilder() {
    PostPlayerActionOutput._init(this);
  }

  PostPlayerActionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPlayerActionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostPlayerActionOutput;
  }

  @override
  void update(void Function(PostPlayerActionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostPlayerActionOutput build() {
    final _$result = _$v ??
        new _$PostPlayerActionOutput._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, 'PostPlayerActionOutput', 'action'));
    replace(_$result);
    return _$result;
  }
}

class _$PostPlayerActionOutputPayload extends PostPlayerActionOutputPayload {
  @override
  final _i2.PlayerAction action;

  factory _$PostPlayerActionOutputPayload(
          [void Function(PostPlayerActionOutputPayloadBuilder)? updates]) =>
      (new PostPlayerActionOutputPayloadBuilder()..update(updates)).build();

  _$PostPlayerActionOutputPayload._({required this.action}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        action, 'PostPlayerActionOutputPayload', 'action');
  }

  @override
  PostPlayerActionOutputPayload rebuild(
          void Function(PostPlayerActionOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostPlayerActionOutputPayloadBuilder toBuilder() =>
      new PostPlayerActionOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPlayerActionOutputPayload && action == other.action;
  }

  @override
  int get hashCode {
    return $jf($jc(0, action.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostPlayerActionOutputPayload')
          ..add('action', action))
        .toString();
  }
}

class PostPlayerActionOutputPayloadBuilder
    implements
        Builder<PostPlayerActionOutputPayload,
            PostPlayerActionOutputPayloadBuilder> {
  _$PostPlayerActionOutputPayload? _$v;

  _i2.PlayerAction? _action;
  _i2.PlayerAction? get action => _$this._action;
  set action(_i2.PlayerAction? action) => _$this._action = action;

  PostPlayerActionOutputPayloadBuilder() {
    PostPlayerActionOutputPayload._init(this);
  }

  PostPlayerActionOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPlayerActionOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostPlayerActionOutputPayload;
  }

  @override
  void update(void Function(PostPlayerActionOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostPlayerActionOutputPayload build() {
    final _$result = _$v ??
        new _$PostPlayerActionOutputPayload._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, 'PostPlayerActionOutputPayload', 'action'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
