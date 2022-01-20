// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.invalid_greeting;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'invalid_greeting.g.dart';

/// This error is thrown when an invalid greeting value is provided.
abstract class InvalidGreeting
    with _i1.SmithyException
    implements
        Built<InvalidGreeting, InvalidGreetingBuilder>,
        _i1.HasPayload<InvalidGreetingPayload> {
  factory InvalidGreeting([void Function(InvalidGreetingBuilder) updates]) =
      _$InvalidGreeting;

  const InvalidGreeting._();

  static const List<_i1.SmithySerializer> serializers = [
    _InvalidGreetingAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidGreetingBuilder b) {}
  @override
  String? get message;
  @override
  InvalidGreetingPayload getPayload() =>
      InvalidGreetingPayload((b) => b..message = message);
  @override
  bool get isRetryable => false;
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class InvalidGreetingPayload
    implements Built<InvalidGreetingPayload, InvalidGreetingPayloadBuilder> {
  factory InvalidGreetingPayload(
          [void Function(InvalidGreetingPayloadBuilder) updates]) =
      _$InvalidGreetingPayload;

  const InvalidGreetingPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidGreetingPayloadBuilder b) {}
  @override
  String? get message;
}

class _InvalidGreetingAwsJson10Serializer
    extends _i1.SmithySerializer<InvalidGreeting> {
  const _InvalidGreetingAwsJson10Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [
        InvalidGreeting,
        _$InvalidGreeting,
        InvalidGreetingPayload,
        _$InvalidGreetingPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  InvalidGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
