// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.server_error;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'server_error.g.dart';

abstract class ServerError
    with _i1.SmithyException
    implements Built<ServerError, ServerErrorBuilder> {
  factory ServerError([void Function(ServerErrorBuilder) updates]) =
      _$ServerError;

  const ServerError._();

  static const List<_i1.SmithySerializer<ServerError>> serializers = [
    _ServerErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerErrorBuilder b) {}
  @override
  String get message;
  @override
  bool get isRetryable => false;
}

class _ServerErrorAwsJson11Serializer
    extends _i1.SmithySerializer<ServerError> {
  const _ServerErrorAwsJson11Serializer() : super('ServerError');

  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ServerError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ServerErrorBuilder();
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
  Iterable<Object?> serialize(Serializers serializers, ServerError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
