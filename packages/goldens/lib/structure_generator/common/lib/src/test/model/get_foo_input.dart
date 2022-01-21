// Generated code. DO NOT MODIFY.

library common.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common/src/test/model/qux.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

/// This *is* documentation about the shape.
abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _GetFooInputSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}

  /// This *is* documentation about the member.
  int? get bar;
  int? get baz;
  int get byteValue;
  String? get foo;
  String? get object;
  _i2.Qux? get quux;
}

class _GetFooInputSerializer extends _i1.SmithySerializer<GetFooInput> {
  const _GetFooInputSerializer() : super('GetFooInput');

  @override
  Iterable<Type> get types => const [GetFooInput, _$GetFooInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [];
  @override
  GetFooInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetFooInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bar':
          result.bar = (serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?);
          break;
        case 'baz':
          result.baz = (serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?);
          break;
        case 'byteValue':
          result.byteValue = (serializers.deserialize(value,
              specifiedType: const FullType(int)) as int);
          break;
        case 'foo':
          result.foo = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'object':
          result.object = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'Quux':
          result.quux.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i2.Qux)) as _i2.Qux));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetFooInput);
    final result = <Object?>[
      'byteValue',
      serializers.serialize(payload.byteValue,
          specifiedType: const FullType(int))
    ];
    if (payload.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(payload.bar,
            specifiedType: const FullType(int)));
    }
    if (payload.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(payload.baz,
            specifiedType: const FullType(int)));
    }
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo,
            specifiedType: const FullType(String)));
    }
    if (payload.object != null) {
      result
        ..add('object')
        ..add(serializers.serialize(payload.object,
            specifiedType: const FullType(String)));
    }
    if (payload.quux != null) {
      result
        ..add('Quux')
        ..add(serializers.serialize(payload.quux,
            specifiedType: const FullType(_i2.Qux)));
    }
    return result;
  }
}