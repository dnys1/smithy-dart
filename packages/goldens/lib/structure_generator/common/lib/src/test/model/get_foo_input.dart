// Generated code. DO NOT MODIFY.

library common.test.model.get_foo_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:common/src/test/model/qux.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

/// This *is* documentation about the shape.
abstract class GetFooInput
    with _i1.HttpInput<GetFooInput>, _i2.AWSEquatable<GetFooInput>
    implements Built<GetFooInput, GetFooInputBuilder> {
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
  _i3.Qux? get quux;
  @override
  GetFooInput getPayload() => this;
  @override
  List<Object?> get props => [bar, baz, byteValue, foo, object, quux];
}

class _GetFooInputSerializer
    extends _i1.StructuredSmithySerializer<GetFooInput> {
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
      final value = iterator.current;
      switch (key) {
        case 'bar':
          if (value != null) {
            result.bar = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'baz':
          if (value != null) {
            result.baz = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'byteValue':
          result.byteValue = (serializers.deserialize(value!,
              specifiedType: const FullType(int)) as int);
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'object':
          if (value != null) {
            result.object = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Quux':
          if (value != null) {
            result.quux.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.Qux)) as _i3.Qux));
          }
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
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(payload.baz,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.object != null) {
      result
        ..add('object')
        ..add(serializers.serialize(payload.object,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.quux != null) {
      result
        ..add('Quux')
        ..add(serializers.serialize(payload.quux,
            specifiedType: const FullType.nullable(_i3.Qux)));
    }
    return result;
  }
}
