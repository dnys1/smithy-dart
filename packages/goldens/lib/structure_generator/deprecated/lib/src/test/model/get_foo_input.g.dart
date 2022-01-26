// GENERATED CODE - DO NOT MODIFY BY HAND

part of deprecated.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final String? bar;
  @override
  final _i3.Qux? baz;
  @override
  final String? foo;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._({this.bar, this.baz, this.foo}) : super._();

  @override
  GetFooInput rebuild(void Function(GetFooInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFooInputBuilder toBuilder() => new GetFooInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFooInput &&
        bar == other.bar &&
        baz == other.baz &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bar.hashCode), baz.hashCode), foo.hashCode));
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  _i3.QuxBuilder? _baz;
  _i3.QuxBuilder get baz => _$this._baz ??= new _i3.QuxBuilder();
  set baz(_i3.QuxBuilder? baz) => _$this._baz = baz;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  GetFooInputBuilder() {
    GetFooInput._init(this);
  }

  GetFooInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _baz = $v.baz?.toBuilder();
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
    _$GetFooInput _$result;
    try {
      _$result =
          _$v ?? new _$GetFooInput._(bar: bar, baz: _baz?.build(), foo: foo);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'baz';
        _baz?.build();
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
