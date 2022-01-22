// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.greeting_struct;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_struct.g.dart';

abstract class GreetingStruct
    with _i1.HttpInput<GreetingStruct>
    implements Built<GreetingStruct, GreetingStructBuilder> {
  factory GreetingStruct([void Function(GreetingStructBuilder) updates]) =
      _$GreetingStruct;

  const GreetingStruct._();

  static const List<_i1.SmithySerializer> serializers = [
    _GreetingStructRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingStructBuilder b) {}
  String? get hi;
}

class _GreetingStructRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GreetingStruct> {
  const _GreetingStructRestJson1Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct, _$GreetingStruct];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  GreetingStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hi':
          if (value != null) {
            result.hi = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GreetingStruct);
    final result = <Object?>[];
    if (payload.hi != null) {
      result
        ..add('hi')
        ..add(serializers.serialize(payload.hi,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
