// Generated code. DO NOT MODIFY.

library streaming_blob.test.model.get_foo_input;

import 'dart:async' as _i3;
import 'dart:typed_data' as _i4;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

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
  _i3.Stream<List<int>>? get bar;
  _i4.Uint8List? get foo;
  @override
  GetFooInput getPayload() => this;
  @override
  List<Object?> get props => [bar, foo];
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
                specifiedType: const FullType(_i3.Stream, [
                  FullType(List, [FullType(int)])
                ])) as _i3.Stream<List<int>>);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(_i4.Uint8List)) as _i4.Uint8List);
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
    final result = <Object?>[];
    if (payload.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(payload.bar,
            specifiedType: const FullType.nullable(_i3.Stream, [
              FullType(List, [FullType(int)])
            ])));
    }
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo,
            specifiedType: const FullType.nullable(_i4.Uint8List)));
    }
    return result;
  }
}
