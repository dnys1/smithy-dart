// Generated code. DO NOT MODIFY.

library rest_json1.glacier.model.missing_parameter_value_exception;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'missing_parameter_value_exception.g.dart';

abstract class MissingParameterValueException
    with
        _i1.SmithyException,
        _i2.AWSEquatable<MissingParameterValueException>
    implements
        Built<MissingParameterValueException,
            MissingParameterValueExceptionBuilder> {
  factory MissingParameterValueException(
          [void Function(MissingParameterValueExceptionBuilder) updates]) =
      _$MissingParameterValueException;

  const MissingParameterValueException._();

  factory MissingParameterValueException.fromResponse(
          MissingParameterValueException payload,
          _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _MissingParameterValueExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MissingParameterValueExceptionBuilder b) {}
  String? get code;
  @override
  String? get message;
  String? get type;
  @override
  _i1.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [code, message, type];
}

class _MissingParameterValueExceptionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MissingParameterValueException> {
  const _MissingParameterValueExceptionRestJson1Serializer()
      : super('MissingParameterValueException');

  @override
  Iterable<Type> get types =>
      const [MissingParameterValueException, _$MissingParameterValueException];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MissingParameterValueException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MissingParameterValueExceptionBuilder();
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
    final payload = (object as MissingParameterValueException);
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