// Generated code. DO NOT MODIFY.

library sensitive_string.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:sensitive_string/src/test/model/foo.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _GetFooInputSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}
  _i2.Foo? get enumMap;
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
        case 'enumMap':
          result.enumMap.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i2.Foo)) as _i2.Foo));
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
    if (payload.enumMap != null) {
      result
        ..add('enumMap')
        ..add(serializers.serialize(payload.enumMap,
            specifiedType: const FullType(_i2.Foo)));
    }
    return result;
  }
}