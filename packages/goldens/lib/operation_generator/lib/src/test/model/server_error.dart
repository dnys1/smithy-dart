// Generated code. DO NOT MODIFY.

library operation_generator.test.model.server_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'server_error.g.dart';

abstract class ServerError
    with _i1.AWSEquatable<ServerError>
    implements Built<ServerError, ServerErrorBuilder>, _i2.SmithyException {
  factory ServerError([void Function(ServerErrorBuilder) updates]) =
      _$ServerError;

  const ServerError._();

  factory ServerError.fromResponse(
          ServerError payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ServerErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerErrorBuilder b) {}
  @override
  String get message;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServerError');
    helper.add('message', message);
    return helper.toString();
  }
}

class _ServerErrorAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ServerError> {
  const _ServerErrorAwsJson11Serializer() : super('ServerError');

  @override
  Iterable<Type> get types => const [ServerError, _$ServerError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
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
