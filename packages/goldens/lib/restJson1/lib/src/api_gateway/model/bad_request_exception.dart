// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.model.bad_request_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'bad_request_exception.g.dart';

abstract class BadRequestException
    with _i1.AWSEquatable<BadRequestException>
    implements
        Built<BadRequestException, BadRequestExceptionBuilder>,
        _i2.SmithyHttpException {
  factory BadRequestException(
          [void Function(BadRequestExceptionBuilder) updates]) =
      _$BadRequestException;

  const BadRequestException._();

  factory BadRequestException.fromResponse(
          BadRequestException payload, _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    _BadRequestExceptionRestJson1Serializer()
  ];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.apigateway', shape: 'BadRequestException');
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BadRequestException');
    helper.add('message', message);
    return helper.toString();
  }
}

class _BadRequestExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<BadRequestException> {
  const _BadRequestExceptionRestJson1Serializer()
      : super('BadRequestException');

  @override
  Iterable<Type> get types =>
      const [BadRequestException, _$BadRequestException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
