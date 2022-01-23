// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.server_error;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'server_error.g.dart';

abstract class ServerError
    with _i1.SmithyException, _i2.AWSEquatable<ServerError>
    implements Built<ServerError, ServerErrorBuilder> {
  factory ServerError([void Function(ServerErrorBuilder) updates]) =
      _$ServerError;

  const ServerError._();

  factory ServerError.fromResponse(
          ServerError payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _ServerErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerErrorBuilder b) {}
  @override
  String get message;
  @override
  _i1.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
}

class _ServerErrorAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ServerError> {
  const _ServerErrorAwsJson11Serializer() : super('ServerError');

  @override
  Iterable<Type> get types => const [ServerError, _$ServerError];
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
    final payload = (object as ServerError);
    final result = <Object?>[
      'message',
      serializers.serialize(payload.message,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
