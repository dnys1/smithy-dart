// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.simple_union;

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class SimpleUnion extends _i1.SmithyUnion<SimpleUnion> {
  const SimpleUnion._();

  const factory SimpleUnion.int_(int int_) = _SimpleUnionInt;

  const factory SimpleUnion.string(String string) = _SimpleUnionString;

  const factory SimpleUnion.sdkUnknown(String name, Object value) =
      _SimpleUnionSdkUnknown;

  static const List<_i1.SmithySerializer<SimpleUnion>> serializers = [
    _SimpleUnionRestJson1Serializer()
  ];

  int? get int_ => null;
  String? get string => null;
  @override
  Object get value => (int_ ?? string)!;
  @override
  T? when<T>(
      {T Function(int)? int_,
      T Function(String)? string,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _SimpleUnionInt) {
      return int_?.call((this as _SimpleUnionInt).int_);
    }
    if (this is _SimpleUnionString) {
      return string?.call((this as _SimpleUnionString).string);
    }
    return sdkUnknown?.call(name, value);
  }
}

class _SimpleUnionInt extends SimpleUnion {
  const _SimpleUnionInt(this.int_) : super._();

  @override
  final int int_;

  @override
  String get name => 'int';
}

class _SimpleUnionString extends SimpleUnion {
  const _SimpleUnionString(this.string) : super._();

  @override
  final String string;

  @override
  String get name => 'string';
}

class _SimpleUnionSdkUnknown extends SimpleUnion {
  const _SimpleUnionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _SimpleUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<SimpleUnion> {
  const _SimpleUnionRestJson1Serializer() : super('SimpleUnion');

  @override
  Iterable<Type> get types => const [SimpleUnion];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  SimpleUnion deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'int':
        return _SimpleUnionInt((serializers.deserialize(value,
            specifiedType: const FullType(int)) as int));
      case 'string':
        return _SimpleUnionString((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
    }
    return _SimpleUnionSdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as SimpleUnion);
    return [
      object.name,
      object.when<Object?>(
          int_: (int int_) =>
              serializers.serialize(int_, specifiedType: const FullType(int)),
          string: (String string) => serializers.serialize(string,
              specifiedType: const FullType(String)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
