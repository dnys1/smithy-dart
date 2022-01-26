// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.model.internal_server_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'internal_server_exception.g.dart';

abstract class InternalServerException
    with _i1.AWSEquatable<InternalServerException>
    implements
        Built<InternalServerException, InternalServerExceptionBuilder>,
        _i2.SmithyException {
  factory InternalServerException(
          [void Function(InternalServerExceptionBuilder) updates]) =
      _$InternalServerException;

  const InternalServerException._();

  factory InternalServerException.fromResponse(InternalServerException payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _InternalServerExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InternalServerExceptionBuilder b) {}
  int? get code;
  @override
  String? get message;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [code, message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'InternalServerException');
    helper.add(r'code', code);
    helper.add(r'message', message);
    return helper.toString();
  }
}

class _InternalServerExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InternalServerException> {
  const _InternalServerExceptionAwsJson11Serializer()
      : super('InternalServerException');

  @override
  Iterable<Type> get types =>
      const [InternalServerException, _$InternalServerException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  InternalServerException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InternalServerExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
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
    final payload = (object as InternalServerException);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(payload.code,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
