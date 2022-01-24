// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.enum_union;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

abstract class EnumUnion extends _i1.SmithyUnion<EnumUnion> {
  const EnumUnion._();

  const factory EnumUnion.first(_i2.EnumString first) = _EnumUnionFirst;

  const factory EnumUnion.second(_i2.EnumString second) = _EnumUnionSecond;

  const factory EnumUnion.sdkUnknown(String name, Object value) =
      _EnumUnionSdkUnknown;

  static const List<_i1.SmithySerializer<EnumUnion>> serializers = [
    _EnumUnionRestJson1Serializer()
  ];

  _i2.EnumString? get first => null;
  _i2.EnumString? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  T? when<T>(
      {T Function(_i2.EnumString)? first,
      T Function(_i2.EnumString)? second,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _EnumUnionFirst) {
      return first?.call((this as _EnumUnionFirst).first);
    }
    if (this is _EnumUnionSecond) {
      return second?.call((this as _EnumUnionSecond).second);
    }
    return sdkUnknown?.call(name, value);
  }
}

class _EnumUnionFirst extends EnumUnion {
  const _EnumUnionFirst(this.first) : super._();

  @override
  final _i2.EnumString first;

  @override
  String get name => 'first';
}

class _EnumUnionSecond extends EnumUnion {
  const _EnumUnionSecond(this.second) : super._();

  @override
  final _i2.EnumString second;

  @override
  String get name => 'second';
}

class _EnumUnionSdkUnknown extends EnumUnion {
  const _EnumUnionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _EnumUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<EnumUnion> {
  const _EnumUnionRestJson1Serializer() : super('EnumUnion');

  @override
  Iterable<Type> get types => const [EnumUnion];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EnumUnion deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'first':
        return _EnumUnionFirst((serializers.deserialize(value,
            specifiedType: const FullType(_i2.EnumString)) as _i2.EnumString));
      case 'second':
        return _EnumUnionSecond((serializers.deserialize(value,
            specifiedType: const FullType(_i2.EnumString)) as _i2.EnumString));
    }
    return _EnumUnionSdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as EnumUnion);
    return [
      object.name,
      object.when<Object?>(
          first: (_i2.EnumString first) => serializers.serialize(first,
              specifiedType: const FullType(_i2.EnumString)),
          second: (_i2.EnumString second) => serializers.serialize(second,
              specifiedType: const FullType(_i2.EnumString)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
