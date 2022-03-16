// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.model.invalid_input_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_input_exception.g.dart';

abstract class InvalidInputException
    with _i1.AWSEquatable<InvalidInputException>
    implements
        Built<InvalidInputException, InvalidInputExceptionBuilder>,
        _i2.SmithyException {
  factory InvalidInputException(
          [void Function(InvalidInputExceptionBuilder) updates]) =
      _$InvalidInputException;

  const InvalidInputException._();

  factory InvalidInputException.fromResponse(InvalidInputException payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _InvalidInputExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidInputExceptionBuilder b) {}
  int? get code;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.machinelearning',
      shape: 'InvalidInputException');
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [code, message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidInputException');
    helper.add('code', code);
    helper.add('message', message);
    return helper.toString();
  }
}

class _InvalidInputExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidInputException> {
  const _InvalidInputExceptionAwsJson11Serializer()
      : super('InvalidInputException');

  @override
  Iterable<Type> get types =>
      const [InvalidInputException, _$InvalidInputException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  InvalidInputException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InvalidInputExceptionBuilder();
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
    final payload = (object as InvalidInputException);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(payload.code!,
            specifiedType: const FullType(int)));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
