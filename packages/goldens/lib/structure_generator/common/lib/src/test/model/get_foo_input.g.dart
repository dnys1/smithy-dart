// GENERATED CODE - DO NOT MODIFY BY HAND

part of common.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final int? bar;
  @override
  final int? baz;
  @override
  final int byteValue;
  @override
  final String? foo;
  @override
  final String? object;
  @override
  final _i2.Qux? quux;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._(
      {this.bar,
      this.baz,
      required this.byteValue,
      this.foo,
      this.object,
      this.quux})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        byteValue, 'GetFooInput', 'byteValue');
  }

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
        byteValue == other.byteValue &&
        foo == other.foo &&
        object == other.object &&
        quux == other.quux;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, bar.hashCode), baz.hashCode),
                    byteValue.hashCode),
                foo.hashCode),
            object.hashCode),
        quux.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFooInput')
          ..add('bar', bar)
          ..add('baz', baz)
          ..add('byteValue', byteValue)
          ..add('foo', foo)
          ..add('object', object)
          ..add('quux', quux))
        .toString();
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  int? _bar;
  int? get bar => _$this._bar;
  set bar(int? bar) => _$this._bar = bar;

  int? _baz;
  int? get baz => _$this._baz;
  set baz(int? baz) => _$this._baz = baz;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

  _i2.QuxBuilder? _quux;
  _i2.QuxBuilder get quux => _$this._quux ??= new _i2.QuxBuilder();
  set quux(_i2.QuxBuilder? quux) => _$this._quux = quux;

  GetFooInputBuilder();

  GetFooInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _baz = $v.baz;
      _byteValue = $v.byteValue;
      _foo = $v.foo;
      _object = $v.object;
      _quux = $v.quux?.toBuilder();
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
              bar: bar,
              baz: baz,
              byteValue: BuiltValueNullFieldError.checkNotNull(
                  byteValue, 'GetFooInput', 'byteValue'),
              foo: foo,
              object: object,
              quux: _quux?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quux';
        _quux?.build();
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
