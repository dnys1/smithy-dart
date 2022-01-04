// Generated code. DO NOT MODIFY.

library deprecated.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:deprecated/src/test/model/qux.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [
    _GetFooInputSerializer()
  ];

  String? get bar;
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  _i2.Qux? get baz;
  String? get foo;
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
              specifiedType: const FullType(String)) as String?);
          break;
        case 'baz':
          result.baz.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i2.Qux)) as _i2.Qux?));
          break;
        case 'foo':
          result.foo = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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
            specifiedType: const FullType(String)));
    }
    if (object.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(object.baz,
            specifiedType: const FullType(_i2.Qux)));
    }
    if (object.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(object.foo,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
