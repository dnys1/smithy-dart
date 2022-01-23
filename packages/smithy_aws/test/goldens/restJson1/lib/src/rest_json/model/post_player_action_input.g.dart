// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.post_player_action_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostPlayerActionInput extends PostPlayerActionInput {
  @override
  final _i3.PlayerAction action;

  factory _$PostPlayerActionInput(
          [void Function(PostPlayerActionInputBuilder)? updates]) =>
      (new PostPlayerActionInputBuilder()..update(updates)).build();

  _$PostPlayerActionInput._({required this.action}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        action, 'PostPlayerActionInput', 'action');
  }

  @override
  PostPlayerActionInput rebuild(
          void Function(PostPlayerActionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostPlayerActionInputBuilder toBuilder() =>
      new PostPlayerActionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPlayerActionInput && action == other.action;
  }

  @override
  int get hashCode {
    return $jf($jc(0, action.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostPlayerActionInput')
          ..add('action', action))
        .toString();
  }
}

class PostPlayerActionInputBuilder
    implements Builder<PostPlayerActionInput, PostPlayerActionInputBuilder> {
  _$PostPlayerActionInput? _$v;

  _i3.PlayerAction? _action;
  _i3.PlayerAction? get action => _$this._action;
  set action(_i3.PlayerAction? action) => _$this._action = action;

  PostPlayerActionInputBuilder() {
    PostPlayerActionInput._init(this);
  }

  PostPlayerActionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPlayerActionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostPlayerActionInput;
  }

  @override
  void update(void Function(PostPlayerActionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostPlayerActionInput build() {
    final _$result = _$v ??
        new _$PostPlayerActionInput._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, 'PostPlayerActionInput', 'action'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
