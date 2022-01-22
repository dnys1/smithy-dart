// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.greeting_struct;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_struct.g.dart';

abstract class GreetingStruct
    implements Built<GreetingStruct, GreetingStructBuilder> {
  factory GreetingStruct([void Function(GreetingStructBuilder) updates]) =
      _$GreetingStruct;

  const GreetingStruct._();

  static const List<_i1.SmithySerializer> serializers = [
    _GreetingStructAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingStructBuilder b) {}
  String? get hi;
}

class _GreetingStructAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GreetingStruct> {
  const _GreetingStructAwsJson10Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct, _$GreetingStruct];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
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
