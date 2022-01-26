// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.validation_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation_protocol/model/validation_exception_field.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'validation_exception.g.dart';

/// A standard error for input validation failures.
/// This should be thrown by services when a member of the input structure
/// falls outside of the modeled or documented constraints.
abstract class ValidationException
    with _i1.AWSEquatable<ValidationException>
    implements
        Built<ValidationException, ValidationExceptionBuilder>,
        _i2.SmithyException {
  factory ValidationException(
          [void Function(ValidationExceptionBuilder) updates]) =
      _$ValidationException;

  const ValidationException._();

  factory ValidationException.fromResponse(
          ValidationException payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ValidationExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidationExceptionBuilder b) {}

  /// A list of specific failures encountered while validating the input.
  /// A member can appear in this list more than once if it failed to satisfy multiple constraints.
  _i3.BuiltList<_i4.ValidationExceptionField>? get fieldList;

  /// A summary of the validation failure.
  @override
  String get message;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [fieldList, message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'ValidationException');
    helper.add(r'fieldList', fieldList);
    helper.add(r'message', message);
    return helper.toString();
  }
}

class _ValidationExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ValidationException> {
  const _ValidationExceptionRestJson1Serializer()
      : super('ValidationException');

  @override
  Iterable<Type> get types =>
      const [ValidationException, _$ValidationException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ValidationException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ValidationExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fieldList':
          if (value != null) {
            result.fieldList.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltList, [
                  FullType(_i4.ValidationExceptionField)
                ])) as _i3.BuiltList<_i4.ValidationExceptionField>));
          }
          break;
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
    final payload = (object as ValidationException);
    final result = <Object?>[
      'message',
      serializers.serialize(payload.message,
          specifiedType: const FullType(String))
    ];
    if (payload.fieldList != null) {
      result
        ..add('fieldList')
        ..add(serializers.serialize(payload.fieldList,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType(_i4.ValidationExceptionField)])));
    }
    return result;
  }
}
