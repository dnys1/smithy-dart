// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.complex_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1/src/json_protocol/model/complex_nested_error_data.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.AWSEquatable<ComplexError>
    implements Built<ComplexError, ComplexErrorBuilder>, _i2.SmithyException {
  factory ComplexError([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  factory ComplexError.fromResponse(
          ComplexError payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ComplexErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  _i3.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [nested, topLevel];
}

class _ComplexErrorAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ComplexError> {
  const _ComplexErrorAwsJson11Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [ComplexError, _$ComplexError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ComplexError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ComplexNestedErrorData))
                as _i3.ComplexNestedErrorData));
          }
          break;
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(value,
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
    final payload = (object as ComplexError);
    final result = <Object?>[];
    if (payload.nested != null) {
      result
        ..add('Nested')
        ..add(serializers.serialize(payload.nested,
            specifiedType:
                const FullType.nullable(_i3.ComplexNestedErrorData)));
    }
    if (payload.topLevel != null) {
      result
        ..add('TopLevel')
        ..add(serializers.serialize(payload.topLevel,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
