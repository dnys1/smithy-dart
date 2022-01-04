// Generated code. DO NOT MODIFY.

library streaming_blob.test.model.get_foo_input;

import 'dart:async' as _i2;
import 'dart:typed_data' as _i3;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [
    _GetFooInputSerializer()
  ];

  _i2.Stream<List<int>>? get bar;
  _i3.Uint8List? get foo;
}

class _GetFooInputSerializer extends _i1.SmithySerializer<GetFooInput> {
  const _GetFooInputSerializer() : super('GetFooInput');

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => [];
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
              specifiedType: const FullType(_i2.Stream, [
                FullType(List, [FullType(int)])
              ])) as _i2.Stream<List<int>>?);
          break;
        case 'foo':
          result.foo = (serializers.deserialize(value,
              specifiedType: const FullType(_i3.Uint8List)) as _i3.Uint8List?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, GetFooInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(object.bar,
            specifiedType: const FullType(_i2.Stream, [
              FullType(List, [FullType(int)])
            ])));
    }
    if (object.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(object.foo,
            specifiedType: const FullType(_i3.Uint8List)));
    }
    return result;
  }
}
