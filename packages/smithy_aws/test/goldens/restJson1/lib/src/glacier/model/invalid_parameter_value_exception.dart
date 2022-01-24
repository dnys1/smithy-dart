// Generated code. DO NOT MODIFY.

library rest_json1.glacier.model.invalid_parameter_value_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_parameter_value_exception.g.dart';

abstract class InvalidParameterValueException
    with
        _i1.AWSEquatable<InvalidParameterValueException>
    implements
        Built<InvalidParameterValueException,
            InvalidParameterValueExceptionBuilder>,
        _i2.SmithyException {
  factory InvalidParameterValueException(
          [void Function(InvalidParameterValueExceptionBuilder) updates]) =
      _$InvalidParameterValueException;

  const InvalidParameterValueException._();

  factory InvalidParameterValueException.fromResponse(
          InvalidParameterValueException payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _InvalidParameterValueExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidParameterValueExceptionBuilder b) {}
  String? get code;
  @override
  String? get message;
  String? get type;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [code, message, type];
}

class _InvalidParameterValueExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<InvalidParameterValueException> {
  const _InvalidParameterValueExceptionRestJson1Serializer()
      : super('InvalidParameterValueException');

  @override
  Iterable<Type> get types =>
      const [InvalidParameterValueException, _$InvalidParameterValueException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  InvalidParameterValueException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InvalidParameterValueExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(value,
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
    final payload = (object as InvalidParameterValueException);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(payload.code,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(payload.type,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
