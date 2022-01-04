// Generated code. DO NOT MODIFY.

library documentation.test.model.get_foo_input;

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

  String? get bar;

  /// Member documentation
  String? get baz;
  String? get qux;
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
          result.baz = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'qux':
          result.qux = (serializers.deserialize(value,
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
            specifiedType: const FullType(String)));
    }
    if (object.qux != null) {
      result
        ..add('qux')
        ..add(serializers.serialize(object.qux,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
