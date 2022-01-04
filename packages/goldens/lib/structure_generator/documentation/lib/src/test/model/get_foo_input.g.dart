// GENERATED CODE - DO NOT MODIFY BY HAND

part of documentation.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final String? bar;
  @override
  final String? baz;
  @override
  final String? qux;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._({this.bar, this.baz, this.qux}) : super._();

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
        qux == other.qux;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bar.hashCode), baz.hashCode), qux.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFooInput')
          ..add('bar', bar)
          ..add('baz', baz)
          ..add('qux', qux))
        .toString();
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  String? _baz;
  String? get baz => _$this._baz;
  set baz(String? baz) => _$this._baz = baz;

  String? _qux;
  String? get qux => _$this._qux;
  set qux(String? qux) => _$this._qux = qux;

  GetFooInputBuilder();

  GetFooInputBuilder get _$this {
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
    final _$result = _$v ?? new _$GetFooInput._(bar: bar, baz: baz, qux: qux);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
