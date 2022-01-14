// GENERATED CODE - DO NOT MODIFY BY HAND

part of streaming_blob.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final _i2.Stream<List<int>>? bar;
  @override
  final _i3.Uint8List? foo;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._({this.bar, this.foo}) : super._();

  @override
  GetFooInput rebuild(void Function(GetFooInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFooInputBuilder toBuilder() => new GetFooInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFooInput && bar == other.bar && foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bar.hashCode), foo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFooInput')
          ..add('bar', bar)
          ..add('foo', foo))
        .toString();
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  _i2.Stream<List<int>>? _bar;
  _i2.Stream<List<int>>? get bar => _$this._bar;
  set bar(_i2.Stream<List<int>>? bar) => _$this._bar = bar;

  _i3.Uint8List? _foo;
  _i3.Uint8List? get foo => _$this._foo;
  set foo(_i3.Uint8List? foo) => _$this._foo = foo;

  GetFooInputBuilder() {
    GetFooInput._init(this);
  }

  GetFooInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _foo = $v.foo;
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
    final _$result = _$v ?? new _$GetFooInput._(bar: bar, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
