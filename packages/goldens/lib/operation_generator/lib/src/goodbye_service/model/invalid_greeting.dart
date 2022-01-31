// Generated code. DO NOT MODIFY.

library operation_generator.goodbye_service.model.invalid_greeting;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_greeting.g.dart';

abstract class InvalidGreeting
    with _i1.AWSEquatable<InvalidGreeting>
    implements
        Built<InvalidGreeting, InvalidGreetingBuilder>,
        _i2.HasPayload<InvalidGreetingPayload>,
        _i2.SmithyException {
  factory InvalidGreeting([void Function(InvalidGreetingBuilder) updates]) =
      _$InvalidGreeting;

  const InvalidGreeting._();

  factory InvalidGreeting.fromResponse(InvalidGreetingPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      InvalidGreeting((b) {
        b.message = payload.message;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    _InvalidGreetingAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidGreetingBuilder b) {}
  String? get foo;
  @override
  String? get message;
  @override
  InvalidGreetingPayload getPayload() =>
      InvalidGreetingPayload((b) => b..message = message);
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [foo, message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidGreeting');
    helper.add('foo', foo);
    helper.add('message', message);
    return helper.toString();
  }
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class InvalidGreetingPayload
    with _i1.AWSEquatable<InvalidGreetingPayload>
    implements Built<InvalidGreetingPayload, InvalidGreetingPayloadBuilder> {
  factory InvalidGreetingPayload(
          [void Function(InvalidGreetingPayloadBuilder) updates]) =
      _$InvalidGreetingPayload;

  const InvalidGreetingPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidGreetingPayloadBuilder b) {}
  String? get message;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidGreetingPayload');
    helper.add('message', message);
    return helper.toString();
  }
}

class _InvalidGreetingAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidGreeting> {
  const _InvalidGreetingAwsJson11Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [InvalidGreeting, _$InvalidGreeting];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
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
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
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
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo!,
            specifiedType: const FullType(String)));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
