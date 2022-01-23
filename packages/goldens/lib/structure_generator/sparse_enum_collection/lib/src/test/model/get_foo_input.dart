// Generated code. DO NOT MODIFY.

library sparse_enum_collection.test.model.get_foo_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:sparse_enum_collection/src/test/model/my_enum.dart' as _i4;

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
  _i3.BuiltMap<String, _i4.MyEnum?>? get enumMap;
  @override
  GetFooInput getPayload() => this;
  @override
  List<Object?> get props => [enumMap];
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
        case 'enumMap':
          if (value != null) {
            result.enumMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltMap, [
                  FullType(String),
                  FullType.nullable(_i4.MyEnum)
                ])) as _i3.BuiltMap<String, _i4.MyEnum?>));
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
    if (payload.enumMap != null) {
      result
        ..add('enumMap')
        ..add(serializers.serialize(payload.enumMap,
            specifiedType: const FullType.nullable(_i3.BuiltMap,
                [FullType(String), FullType.nullable(_i4.MyEnum)])));
    }
    return result;
  }
}
