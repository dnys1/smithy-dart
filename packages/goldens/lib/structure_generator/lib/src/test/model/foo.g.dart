// GENERATED CODE - DO NOT MODIFY BY HAND

part of structure_generator.test.model.foo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Foo extends Foo {
  @override
  final String? bar;
  @override
  final String? baz;
  @override
  final String? qux;

  factory _$Foo([void Function(FooBuilder)? updates]) =>
      (new FooBuilder()..update(updates)).build();

  _$Foo._({this.bar, this.baz, this.qux}) : super._();

  @override
  Foo rebuild(void Function(FooBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooBuilder toBuilder() => new FooBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Foo &&
        bar == other.bar &&
        baz == other.baz &&
        qux == other.qux;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bar.hashCode), baz.hashCode), qux.hashCode));
  }
}

class FooBuilder implements Builder<Foo, FooBuilder> {
  _$Foo? _$v;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  String? _baz;
  String? get baz => _$this._baz;
  set baz(String? baz) => _$this._baz = baz;

  String? _qux;
  String? get qux => _$this._qux;
  set qux(String? qux) => _$this._qux = qux;

  FooBuilder() {
    Foo._init(this);
  }

  FooBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _baz = $v.baz;
      _qux = $v.qux;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Foo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Foo;
  }

  @override
  void update(void Function(FooBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Foo build() {
    final _$result = _$v ?? new _$Foo._(bar: bar, baz: baz, qux: qux);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
