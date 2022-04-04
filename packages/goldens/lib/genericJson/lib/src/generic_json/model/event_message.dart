// Generated code. DO NOT MODIFY.

library generic_json.generic_json.model.event_message;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'event_message.g.dart';

abstract class EventMessage
    with _i1.AWSEquatable<EventMessage>
    implements Built<EventMessage, EventMessageBuilder> {
  factory EventMessage([void Function(EventMessageBuilder) updates]) =
      _$EventMessage;

  const EventMessage._();

  static const List<_i2.SmithySerializer> serializers = [
    _EventMessageSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventMessageBuilder b) {}
  String get message;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventMessage');
    helper.add('message', message);
    return helper.toString();
  }
}

class _EventMessageSerializer
    extends _i2.StructuredSmithySerializer<EventMessage> {
  const _EventMessageSerializer() : super('EventMessage');

  @override
  Iterable<Type> get types => const [EventMessage, _$EventMessage];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'smithy.dart', shape: 'genericProtocol')];
  @override
  EventMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EventMessageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as EventMessage);
    final result = <Object?>[
      'message',
      serializers.serialize(payload.message,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
