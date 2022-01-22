// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.greeting_with_errors_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_with_errors_input.g.dart';

abstract class GreetingWithErrorsInput
    with _i1.HttpInput<GreetingWithErrorsInput>
    implements Built<GreetingWithErrorsInput, GreetingWithErrorsInputBuilder> {
  factory GreetingWithErrorsInput(
          [void Function(GreetingWithErrorsInputBuilder) updates]) =
      _$GreetingWithErrorsInput;

  const GreetingWithErrorsInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _GreetingWithErrorsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsInputBuilder b) {}
  String? get greeting;
}

class _GreetingWithErrorsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GreetingWithErrorsInput> {
  const _GreetingWithErrorsInputAwsJson10Serializer()
      : super('GreetingWithErrorsInput');

  @override
  Iterable<Type> get types =>
      const [GreetingWithErrorsInput, _$GreetingWithErrorsInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  GreetingWithErrorsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GreetingWithErrorsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(value,
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
    final payload = (object as GreetingWithErrorsInput);
    final result = <Object?>[];
    if (payload.greeting != null) {
      result
        ..add('greeting')
        ..add(serializers.serialize(payload.greeting,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
