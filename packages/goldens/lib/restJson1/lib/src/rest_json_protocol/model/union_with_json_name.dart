// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.union_with_json_name;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class UnionWithJsonName extends _i1.SmithyUnion<UnionWithJsonName> {
  const UnionWithJsonName._();

  const factory UnionWithJsonName.bar(String bar) = _UnionWithJsonNameBar;

  const factory UnionWithJsonName.baz(String baz) = _UnionWithJsonNameBaz;

  const factory UnionWithJsonName.foo(String foo) = _UnionWithJsonNameFoo;

  const factory UnionWithJsonName.sdkUnknown(String name, Object value) =
      _UnionWithJsonNameSdkUnknown;

  static const List<_i1.SmithySerializer<UnionWithJsonName>> serializers = [
    _UnionWithJsonNameRestJson1Serializer()
  ];

  String? get bar => null;
  String? get baz => null;
  String? get foo => null;
  @override
  Object get value => (bar ?? baz ?? foo)!;
  @override
  T? when<T>(
      {T Function(String)? bar,
      T Function(String)? baz,
      T Function(String)? foo,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _UnionWithJsonNameBar) {
      return bar?.call((this as _UnionWithJsonNameBar).bar);
    }
    if (this is _UnionWithJsonNameBaz) {
      return baz?.call((this as _UnionWithJsonNameBaz).baz);
    }
    if (this is _UnionWithJsonNameFoo) {
      return foo?.call((this as _UnionWithJsonNameFoo).foo);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'UnionWithJsonName');
    if (bar != null) {
      helper.add(r'bar', bar);
    }
    if (baz != null) {
      helper.add(r'baz', baz);
    }
    if (foo != null) {
      helper.add(r'foo', foo);
    }
    return helper.toString();
  }
}

class _UnionWithJsonNameBar extends UnionWithJsonName {
  const _UnionWithJsonNameBar(this.bar) : super._();

  @override
  final String bar;

  @override
  String get name => 'bar';
}

class _UnionWithJsonNameBaz extends UnionWithJsonName {
  const _UnionWithJsonNameBaz(this.baz) : super._();

  @override
  final String baz;

  @override
  String get name => 'baz';
}

class _UnionWithJsonNameFoo extends UnionWithJsonName {
  const _UnionWithJsonNameFoo(this.foo) : super._();

  @override
  final String foo;

  @override
  String get name => 'foo';
}

class _UnionWithJsonNameSdkUnknown extends UnionWithJsonName {
  const _UnionWithJsonNameSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _UnionWithJsonNameRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UnionWithJsonName> {
  const _UnionWithJsonNameRestJson1Serializer() : super('UnionWithJsonName');

  @override
  Iterable<Type> get types => const [UnionWithJsonName];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UnionWithJsonName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'bar':
        return UnionWithJsonName.bar((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
      case '_baz':
        return UnionWithJsonName.baz((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
      case 'FOO':
        return UnionWithJsonName.foo((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
    }
    return UnionWithJsonName.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    const renames = {'foo': 'FOO', 'baz': '_baz'};
    (object as UnionWithJsonName);
    return [
      renames[object.name] ?? object.name,
      object.when<Object?>(
          bar: (String bar) =>
              serializers.serialize(bar, specifiedType: const FullType(String)),
          baz: (String baz) =>
              serializers.serialize(baz, specifiedType: const FullType(String)),
          foo: (String foo) =>
              serializers.serialize(foo, specifiedType: const FullType(String)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
