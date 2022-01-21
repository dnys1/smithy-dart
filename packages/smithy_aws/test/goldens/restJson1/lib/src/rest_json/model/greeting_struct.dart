// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.greeting_struct;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_struct.g.dart';

abstract class GreetingStruct
    with _i1.HttpInput<GreetingStructPayload>
    implements
        Built<GreetingStruct, GreetingStructBuilder>,
        _i1.HasPayload<GreetingStructPayload> {
  factory GreetingStruct([void Function(GreetingStructBuilder) updates]) =
      _$GreetingStruct;

  const GreetingStruct._();

  static const List<_i1.SmithySerializer> serializers = [
    _GreetingStructRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingStructBuilder b) {}
  String? get hi;
  @override
  GreetingStructPayload getPayload() =>
      GreetingStructPayload((b) => b..hi = hi);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class GreetingStructPayload
    implements Built<GreetingStructPayload, GreetingStructPayloadBuilder> {
  factory GreetingStructPayload(
          [void Function(GreetingStructPayloadBuilder) updates]) =
      _$GreetingStructPayload;

  const GreetingStructPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingStructPayloadBuilder b) {}
  String? get hi;
}

class _GreetingStructRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GreetingStructPayload> {
  const _GreetingStructRestJson1Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [
        GreetingStruct,
        _$GreetingStruct,
        GreetingStructPayload,
        _$GreetingStructPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  GreetingStructPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GreetingStructPayloadBuilder();
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
    final payload = object is GreetingStruct
        ? object.getPayload()
        : (object as GreetingStructPayload);
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
