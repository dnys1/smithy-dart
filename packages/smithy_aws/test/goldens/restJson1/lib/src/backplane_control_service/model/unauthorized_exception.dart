// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.model.unauthorized_exception;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'unauthorized_exception.g.dart';

abstract class UnauthorizedException
    with _i1.SmithyException, _i2.AWSEquatable<UnauthorizedException>
    implements Built<UnauthorizedException, UnauthorizedExceptionBuilder> {
  factory UnauthorizedException(
          [void Function(UnauthorizedExceptionBuilder) updates]) =
      _$UnauthorizedException;

  const UnauthorizedException._();

  factory UnauthorizedException.fromResponse(UnauthorizedException payload,
          _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _UnauthorizedExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnauthorizedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i1.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
}

class _UnauthorizedExceptionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UnauthorizedException> {
  const _UnauthorizedExceptionRestJson1Serializer()
      : super('UnauthorizedException');

  @override
  Iterable<Type> get types =>
      const [UnauthorizedException, _$UnauthorizedException];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UnauthorizedException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UnauthorizedExceptionBuilder();
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
    final payload = (object as UnauthorizedException);
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
