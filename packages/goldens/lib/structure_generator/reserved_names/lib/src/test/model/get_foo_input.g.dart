// GENERATED CODE - DO NOT MODIFY BY HAND

part of reserved_names.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final _i3.ImageBuilder? build_;
  @override
  final _i4.Function$? function;
  @override
  final _i5.Type$? type;
  @override
  final _i6.Image$? update_;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._({this.build_, this.function, this.type, this.update_})
      : super._();

  @override
  GetFooInput rebuild(void Function(GetFooInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFooInputBuilder toBuilder() => new GetFooInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFooInput &&
        build_ == other.build_ &&
        function == other.function &&
        type == other.type &&
        update_ == other.update_;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, build_.hashCode), function.hashCode), type.hashCode),
        update_.hashCode));
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  _i3.ImageBuilderBuilder? _build_;
  _i3.ImageBuilderBuilder get build_ =>
      _$this._build_ ??= new _i3.ImageBuilderBuilder();
  set build_(_i3.ImageBuilderBuilder? build_) => _$this._build_ = build_;

  _i4.Function$? _function;
  _i4.Function$? get function => _$this._function;
  set function(_i4.Function$? function) => _$this._function = function;

  _i5.Type$Builder? _type;
  _i5.Type$Builder get type => _$this._type ??= new _i5.Type$Builder();
  set type(_i5.Type$Builder? type) => _$this._type = type;

  _i6.Image$Builder? _update_;
  _i6.Image$Builder get update_ => _$this._update_ ??= new _i6.Image$Builder();
  set update_(_i6.Image$Builder? update_) => _$this._update_ = update_;

  GetFooInputBuilder() {
    GetFooInput._init(this);
  }

  GetFooInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _build_ = $v.build_?.toBuilder();
      _function = $v.function;
      _type = $v.type?.toBuilder();
      _update_ = $v.update_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFooInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFooInput;
  }

  @override
  void update(void Function(GetFooInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFooInput build() {
    _$GetFooInput _$result;
    try {
      _$result = _$v ??
          new _$GetFooInput._(
              build_: _build_?.build(),
              function: function,
              type: _type?.build(),
              update_: _update_?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'build_';
        _build_?.build();

        _$failedField = 'type';
        _type?.build();
        _$failedField = 'update_';
        _update_?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetFooInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
