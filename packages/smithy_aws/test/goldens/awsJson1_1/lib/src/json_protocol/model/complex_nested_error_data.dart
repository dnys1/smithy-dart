// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.complex_nested_error_data;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'complex_nested_error_data.g.dart';

abstract class ComplexNestedErrorData
    implements Built<ComplexNestedErrorData, ComplexNestedErrorDataBuilder> {
  factory ComplexNestedErrorData(
          [void Function(ComplexNestedErrorDataBuilder) updates]) =
      _$ComplexNestedErrorData;

  const ComplexNestedErrorData._();

  static const List<_i1.SmithySerializer> serializers = [
    _ComplexNestedErrorDataAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexNestedErrorDataBuilder b) {}
  String? get foo;
}

class _ComplexNestedErrorDataAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ComplexNestedErrorData> {
  const _ComplexNestedErrorDataAwsJson11Serializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types =>
      const [ComplexNestedErrorData, _$ComplexNestedErrorData];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ComplexNestedErrorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Foo':
          result.foo = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ComplexNestedErrorData);
    final result = <Object?>[];
    if (payload.foo != null) {
      result
        ..add('Foo')
        ..add(serializers.serialize(payload.foo,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}