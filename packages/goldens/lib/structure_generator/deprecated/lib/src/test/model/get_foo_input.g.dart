// GENERATED CODE - DO NOT MODIFY BY HAND

part of goldens.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final String? bar;
  @override
  final String? foo;
  @override
  final _i2.Qux? qux;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._({this.bar, this.foo, this.qux}) : super._();

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
        foo == other.foo &&
        qux == other.qux;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bar.hashCode), foo.hashCode), qux.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFooInput')
          ..add('bar', bar)
          ..add('foo', foo)
          ..add('qux', qux))
        .toString();
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i2.QuxBuilder? _qux;
  _i2.QuxBuilder get qux => _$this._qux ??= new _i2.QuxBuilder();
  set qux(_i2.QuxBuilder? qux) => _$this._qux = qux;

  GetFooInputBuilder();

  GetFooInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _foo = $v.foo;
      _qux = $v.qux?.toBuilder();
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
          _$v ?? new _$GetFooInput._(bar: bar, foo: foo, qux: _qux?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'qux';
        _qux?.build();
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
