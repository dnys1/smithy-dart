// Generated code. DO NOT MODIFY.

library goldens.test.model.my_union;

import 'dart:core' as _i0;

import 'package:smithy/smithy.dart' as _i1;

class MyUnion extends _i1.SmithyUnion<MyUnion> {
  const MyUnion._();

  const factory MyUnion.bar(_i0.int bar) = _MyUnionBar;

  const factory MyUnion.baz(_i0.int baz) = _MyUnionBaz;

  const factory MyUnion.foo(_i0.String foo) = _MyUnionFoo;

  const factory MyUnion.sdkUnknown(_i0.Object value) = _MyUnionSdkUnknown;

  _i0.int? get bar => null;
  _i0.int? get baz => null;
  _i0.String? get foo => null;
  _i0.Object? get sdkUnknown => null;
  @_i0.override
  _i0.Object get value => (bar ?? baz ?? foo)!;
  @_i0.override
  T? when<T>(
      {T Function(_i0.int)? bar,
      T Function(_i0.int)? baz,
      T Function(_i0.String)? foo,
      T Function(_i0.Object)? sdkUnknown}) {
    if (this is _MyUnionBar) {
      return bar?.call((this as _MyUnionBar).bar);
    }
    if (this is _MyUnionBaz) {
      return baz?.call((this as _MyUnionBaz).baz);
    }
    if (this is _MyUnionFoo) {
      return foo?.call((this as _MyUnionFoo).foo);
    }
    if (this is _MyUnionSdkUnknown) {
      return sdkUnknown?.call((this as _MyUnionSdkUnknown).value);
    }
    throw _i0.StateError('Unknown union value: $this');
  }

  @_i0.override
  _i0.Map<_i0.String, _i0.Object> toJson() => when(
      bar: (bar) => {'bar': bar},
      baz: (baz) => {'baz': baz},
      foo: (foo) => {'foo': foo},
      sdkUnknown: (sdkUnknown) => {'sdkUnknown': sdkUnknown})!;
}

class _MyUnionBar extends MyUnion {
  const _MyUnionBar(this.bar) : super._();

  @_i0.override
  final _i0.int bar;
}

class _MyUnionBaz extends MyUnion {
  const _MyUnionBaz(this.baz) : super._();

  @_i0.override
  final _i0.int baz;
}

class _MyUnionFoo extends MyUnion {
  const _MyUnionFoo(this.foo) : super._();

  @_i0.override
  final _i0.String foo;
}

class _MyUnionSdkUnknown extends MyUnion {
  const _MyUnionSdkUnknown(this.value) : super._();

  @_i0.override
  final _i0.Object value;
}
