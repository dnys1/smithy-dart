// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.model.event;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:generic_json/src/generic_json/model/event_message.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

abstract class Event extends _i1.SmithyUnion<Event> {
  const Event._();

  const factory Event.message(_i2.EventMessage message) = _EventMessage;

  const factory Event.sdkUnknown(String name, Object value) = _EventSdkUnknown;

  static const List<_i1.SmithySerializer<Event>> serializers = [
    _EventSerializer()
  ];

  _i2.EventMessage? get message => null;
  @override
  Object get value => (message)!;
  @override
  T? when<T>(
      {T Function(_i2.EventMessage)? message,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _EventMessage) {
      return message?.call((this as _EventMessage).message);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'Event');
    if (message != null) {
      helper.add(r'message', message);
    }
    return helper.toString();
  }
}

class _EventMessage extends Event {
  const _EventMessage(this.message) : super._();

  @override
  final _i2.EventMessage message;

  @override
  String get name => 'message';
}

class _EventSdkUnknown extends Event {
  const _EventSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _EventSerializer extends _i1.StructuredSmithySerializer<Event> {
  const _EventSerializer() : super('Event');

  @override
  Iterable<Type> get types => const [Event];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'smithy.dart', shape: 'genericProtocol')];
  @override
  Event deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'message':
        return Event.message((serializers.deserialize(value,
                specifiedType: const FullType(_i2.EventMessage))
            as _i2.EventMessage));
    }
    return Event.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as Event);
    return [
      object.name,
      object.when<Object?>(
          message: (_i2.EventMessage message) => serializers.serialize(message,
              specifiedType: const FullType(_i2.EventMessage)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
