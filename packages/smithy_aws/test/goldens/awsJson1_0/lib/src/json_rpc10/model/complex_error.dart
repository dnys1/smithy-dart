// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.complex_error;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_0/src/json_rpc10/model/complex_nested_error_data.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.SmithyException, _i2.AWSEquatable<ComplexError>
    implements Built<ComplexError, ComplexErrorBuilder> {
  factory ComplexError([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  factory ComplexError.fromResponse(
          ComplexError payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _ComplexErrorAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  _i3.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  String? get message => null;
  @override
  bool get isRetryable => false;
  @override
  List<Object?> get props => [nested, topLevel];
}

class _ComplexErrorAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ComplexError> {
  const _ComplexErrorAwsJson10Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [ComplexError, _$ComplexError];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
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
