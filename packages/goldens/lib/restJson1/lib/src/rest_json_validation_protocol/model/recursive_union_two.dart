// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.recursive_union_two;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

abstract class RecursiveUnionTwo extends _i1.SmithyUnion<RecursiveUnionTwo> {
  const RecursiveUnionTwo._();

  const factory RecursiveUnionTwo.string(_i2.RecursiveEnumString string) =
      _RecursiveUnionTwoString;

  const factory RecursiveUnionTwo.union(_i3.RecursiveUnionOne union) =
      _RecursiveUnionTwoUnion;

  const factory RecursiveUnionTwo.sdkUnknown(String name, Object value) =
      _RecursiveUnionTwoSdkUnknown;

  static const List<_i1.SmithySerializer<RecursiveUnionTwo>> serializers = [
    _RecursiveUnionTwoRestJson1Serializer()
  ];

  _i2.RecursiveEnumString? get string => null;
  _i3.RecursiveUnionOne? get union => null;
  @override
  Object get value => (string ?? union)!;
  @override
  T? when<T>(
      {T Function(_i2.RecursiveEnumString)? string,
      T Function(_i3.RecursiveUnionOne)? union,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _RecursiveUnionTwoString) {
      return string?.call((this as _RecursiveUnionTwoString).string);
    }
    if (this is _RecursiveUnionTwoUnion) {
      return union?.call((this as _RecursiveUnionTwoUnion).union);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'RecursiveUnionTwo');
    if (string != null) {
      helper.add(r'string', string);
    }
    if (union != null) {
      helper.add(r'union', union);
    }
    return helper.toString();
  }
}

class _RecursiveUnionTwoString extends RecursiveUnionTwo {
  const _RecursiveUnionTwoString(this.string) : super._();

  @override
  final _i2.RecursiveEnumString string;

  @override
  String get name => 'string';
}

class _RecursiveUnionTwoUnion extends RecursiveUnionTwo {
  const _RecursiveUnionTwoUnion(this.union) : super._();

  @override
  final _i3.RecursiveUnionOne union;

  @override
  String get name => 'union';
}

class _RecursiveUnionTwoSdkUnknown extends RecursiveUnionTwo {
  const _RecursiveUnionTwoSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _RecursiveUnionTwoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveUnionTwo> {
  const _RecursiveUnionTwoRestJson1Serializer() : super('RecursiveUnionTwo');

  @override
  Iterable<Type> get types => const [RecursiveUnionTwo];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RecursiveUnionTwo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'string':
        return RecursiveUnionTwo.string((serializers.deserialize(value,
                specifiedType: const FullType(_i2.RecursiveEnumString))
            as _i2.RecursiveEnumString));
      case 'union':
        return RecursiveUnionTwo.union((serializers.deserialize(value,
                specifiedType: const FullType(_i3.RecursiveUnionOne))
            as _i3.RecursiveUnionOne));
    }
    return RecursiveUnionTwo.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as RecursiveUnionTwo);
    return [
      object.name,
      object.when<Object?>(
          string: (_i2.RecursiveEnumString string) => serializers.serialize(
              string,
              specifiedType: const FullType(_i2.RecursiveEnumString)),
          union: (_i3.RecursiveUnionOne union) => serializers.serialize(union,
              specifiedType: const FullType(_i3.RecursiveUnionOne)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
