// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.model.too_many_requests_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'too_many_requests_exception.g.dart';

abstract class TooManyRequestsException
    with _i1.AWSEquatable<TooManyRequestsException>
    implements
        Built<TooManyRequestsException, TooManyRequestsExceptionBuilder>,
        _i2.HasPayload<TooManyRequestsExceptionPayload>,
        _i2.SmithyException {
  factory TooManyRequestsException(
          [void Function(TooManyRequestsExceptionBuilder) updates]) =
      _$TooManyRequestsException;

  const TooManyRequestsException._();

  factory TooManyRequestsException.fromResponse(
          TooManyRequestsExceptionPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      TooManyRequestsException((b) {
        b.message = payload.message;
        if (response.headers['Retry-After'] != null) {
          b.retryAfterSeconds = response.headers['Retry-After']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    _TooManyRequestsExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TooManyRequestsExceptionBuilder b) {}
  @override
  String? get message;
  String? get retryAfterSeconds;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.apigateway', shape: 'TooManyRequestsException');
  @override
  TooManyRequestsExceptionPayload getPayload() =>
      TooManyRequestsExceptionPayload((b) {
        b.message = message;
      });
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message, retryAfterSeconds];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TooManyRequestsException');
    helper.add('message', message);
    helper.add('retryAfterSeconds', retryAfterSeconds);
    return helper.toString();
  }
}

@_i3.internal
abstract class TooManyRequestsExceptionPayload
    with
        _i1.AWSEquatable<TooManyRequestsExceptionPayload>
    implements
        Built<TooManyRequestsExceptionPayload,
            TooManyRequestsExceptionPayloadBuilder> {
  factory TooManyRequestsExceptionPayload(
          [void Function(TooManyRequestsExceptionPayloadBuilder) updates]) =
      _$TooManyRequestsExceptionPayload;

  const TooManyRequestsExceptionPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TooManyRequestsExceptionPayloadBuilder b) {}
  String? get message;
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.apigateway', shape: 'TooManyRequestsException');
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TooManyRequestsExceptionPayload');
    helper.add('message', message);
    return helper.toString();
  }
}

class _TooManyRequestsExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<TooManyRequestsExceptionPayload> {
  const _TooManyRequestsExceptionRestJson1Serializer()
      : super('TooManyRequestsException');

  @override
  Iterable<Type> get types => const [
        TooManyRequestsException,
        _$TooManyRequestsException,
        TooManyRequestsExceptionPayload,
        _$TooManyRequestsExceptionPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  TooManyRequestsExceptionPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = TooManyRequestsExceptionPayloadBuilder();
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
    final payload = object is TooManyRequestsException
        ? object.getPayload()
        : (object as TooManyRequestsExceptionPayload);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
