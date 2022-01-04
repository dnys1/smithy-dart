// Generated code. DO NOT MODIFY.

library sparse_enum_collection.test.model.get_foo_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:sparse_enum_collection/src/test/model/my_enum.dart' as _i3;

part 'get_foo_input.g.dart';

abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [
    _GetFooInputSerializer()
  ];

  _i2.BuiltMap<String, _i3.MyEnum?>? get enumMap;
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
        case 'enumMap':
          result.enumMap.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.BuiltMap, [FullType(String), FullType(_i3.MyEnum)]))
              as _i2.BuiltMap<String, _i3.MyEnum?>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, GetFooInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.enumMap != null) {
      result
        ..add('enumMap')
        ..add(serializers.serialize(object.enumMap,
            specifiedType: const FullType(
                _i2.BuiltMap, [FullType(String), FullType(_i3.MyEnum)])));
    }
    return result;
  }
}
