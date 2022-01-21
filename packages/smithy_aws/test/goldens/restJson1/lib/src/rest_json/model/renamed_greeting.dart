// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.renamed_greeting;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'renamed_greeting.g.dart';

abstract class RenamedGreeting
    implements Built<RenamedGreeting, RenamedGreetingBuilder> {
  factory RenamedGreeting([void Function(RenamedGreetingBuilder) updates]) =
      _$RenamedGreeting;

  const RenamedGreeting._();

  static const List<_i1.SmithySerializer> serializers = [
    _GreetingStructRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RenamedGreetingBuilder b) {}
  String? get salutation;
}

class _GreetingStructRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RenamedGreeting> {
  const _GreetingStructRestJson1Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [RenamedGreeting, _$RenamedGreeting];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RenamedGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RenamedGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'salutation':
          if (value != null) {
            result.salutation = (serializers.deserialize(value,
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
    final payload = (object as RenamedGreeting);
    final result = <Object?>[];
    if (payload.salutation != null) {
      result
        ..add('salutation')
        ..add(serializers.serialize(payload.salutation,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
