// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation.model.validation_exception_field;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'validation_exception_field.g.dart';

/// Describes one specific validation failure for an input member.
abstract class ValidationExceptionField
    with _i1.AWSEquatable<ValidationExceptionField>
    implements
        Built<ValidationExceptionField, ValidationExceptionFieldBuilder> {
  factory ValidationExceptionField(
          [void Function(ValidationExceptionFieldBuilder) updates]) =
      _$ValidationExceptionField;

  const ValidationExceptionField._();

  static const List<_i2.SmithySerializer> serializers = [
    _ValidationExceptionFieldRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidationExceptionFieldBuilder b) {}

  /// A detailed description of the validation failure.
  String get message;

  /// A JSONPointer expression to the structure member whose value failed to satisfy the modeled constraints.
  String get path;
  @override
  List<Object?> get props => [message, path];
}

class _ValidationExceptionFieldRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ValidationExceptionField> {
  const _ValidationExceptionFieldRestJson1Serializer()
      : super('ValidationExceptionField');

  @override
  Iterable<Type> get types =>
      const [ValidationExceptionField, _$ValidationExceptionField];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ValidationExceptionField deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ValidationExceptionFieldBuilder();
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
        case 'path':
          result.path = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ValidationExceptionField);
    final result = <Object?>[
      'message',
      serializers.serialize(payload.message,
          specifiedType: const FullType(String)),
      'path',
      serializers.serialize(payload.path, specifiedType: const FullType(String))
    ];
    return result;
  }
}
