// Generated code. DO NOT MODIFY.

library rest_json1.glacier.model.resource_not_found_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_not_found_exception.g.dart';

abstract class ResourceNotFoundException
    with _i1.AWSEquatable<ResourceNotFoundException>
    implements
        Built<ResourceNotFoundException, ResourceNotFoundExceptionBuilder>,
        _i2.SmithyException {
  factory ResourceNotFoundException(
          [void Function(ResourceNotFoundExceptionBuilder) updates]) =
      _$ResourceNotFoundException;

  const ResourceNotFoundException._();

  factory ResourceNotFoundException.fromResponse(
          ResourceNotFoundException payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ResourceNotFoundExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceNotFoundExceptionBuilder b) {}
  String? get code;
  @override
  String? get message;
  String? get type;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [code, message, type];
}

class _ResourceNotFoundExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ResourceNotFoundException> {
  const _ResourceNotFoundExceptionRestJson1Serializer()
      : super('ResourceNotFoundException');

  @override
  Iterable<Type> get types =>
      const [ResourceNotFoundException, _$ResourceNotFoundException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ResourceNotFoundException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ResourceNotFoundExceptionBuilder();
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
    final payload = (object as ResourceNotFoundException);
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
