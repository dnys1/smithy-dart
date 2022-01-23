// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.model.bad_request_exception;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'bad_request_exception.g.dart';

abstract class BadRequestException
    with _i1.SmithyException, _i2.AWSEquatable<BadRequestException>
    implements Built<BadRequestException, BadRequestExceptionBuilder> {
  factory BadRequestException(
          [void Function(BadRequestExceptionBuilder) updates]) =
      _$BadRequestException;

  const BadRequestException._();

  factory BadRequestException.fromResponse(
          BadRequestException payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _BadRequestExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BadRequestExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i1.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
}

class _BadRequestExceptionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<BadRequestException> {
  const _BadRequestExceptionRestJson1Serializer()
      : super('BadRequestException');

  @override
  Iterable<Type> get types =>
      const [BadRequestException, _$BadRequestException];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  BadRequestException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = BadRequestExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
    final payload = (object as BadRequestException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
