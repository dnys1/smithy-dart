// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.server_error;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'server_error.g.dart';

abstract class ServerError
    with _i1.SmithyException
    implements
        Built<ServerError, ServerErrorBuilder>,
        _i1.HasPayload<ServerErrorPayload> {
  factory ServerError([void Function(ServerErrorBuilder) updates]) =
      _$ServerError;

  const ServerError._();

  static const List<_i1.SmithySerializer> serializers = [
    _ServerErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerErrorBuilder b) {}
  @override
  String get message;
  @override
  ServerErrorPayload getPayload() =>
      ServerErrorPayload((b) => b..message = message);
  @override
  bool get isRetryable => false;
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class ServerErrorPayload
    implements Built<ServerErrorPayload, ServerErrorPayloadBuilder> {
  factory ServerErrorPayload(
          [void Function(ServerErrorPayloadBuilder) updates]) =
      _$ServerErrorPayload;

  const ServerErrorPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerErrorPayloadBuilder b) {}
  @override
  String get message;
}

class _ServerErrorAwsJson11Serializer
    extends _i1.SmithySerializer<ServerErrorPayload> {
  const _ServerErrorAwsJson11Serializer() : super('ServerError');

  @override
  Iterable<Type> get types => const [ServerError, _$ServerError];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ServerErrorPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ServerErrorPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final ServerErrorPayload payload = object is ServerError
        ? object.getPayload()
        : (object as ServerErrorPayload);
    final result = <Object?>[
      'message',
      serializers.serialize(payload.message,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
