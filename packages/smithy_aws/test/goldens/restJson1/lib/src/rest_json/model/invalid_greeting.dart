// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.invalid_greeting;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'invalid_greeting.g.dart';

/// This error is thrown when an invalid greeting value is provided.
abstract class InvalidGreeting
    with _i1.SmithyException, _i2.AWSEquatable<InvalidGreeting>
    implements Built<InvalidGreeting, InvalidGreetingBuilder> {
  factory InvalidGreeting([void Function(InvalidGreetingBuilder) updates]) =
      _$InvalidGreeting;

  const InvalidGreeting._();

  factory InvalidGreeting.fromResponse(
          InvalidGreeting payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _InvalidGreetingRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidGreetingBuilder b) {}
  @override
  String? get message;
  @override
  _i1.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
}

class _InvalidGreetingRestJson1Serializer
    extends _i1.StructuredSmithySerializer<InvalidGreeting> {
  const _InvalidGreetingRestJson1Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [InvalidGreeting, _$InvalidGreeting];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  InvalidGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
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
    final payload = (object as InvalidGreeting);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(payload.message,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
