// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.simple_scalar_properties_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_input.g.dart';

abstract class SimpleScalarPropertiesInput
    with _i1.HttpInput<SimpleScalarPropertiesInput>
    implements
        Built<SimpleScalarPropertiesInput, SimpleScalarPropertiesInputBuilder> {
  factory SimpleScalarPropertiesInput(
          [void Function(SimpleScalarPropertiesInputBuilder) updates]) =
      _$SimpleScalarPropertiesInput;

  const SimpleScalarPropertiesInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SimpleScalarPropertiesInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputBuilder b) {}
  double? get doubleValue;
  double? get floatValue;
}

class _SimpleScalarPropertiesInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<SimpleScalarPropertiesInput> {
  const _SimpleScalarPropertiesInputAwsJson10Serializer()
      : super('SimpleScalarPropertiesInput');

  @override
  Iterable<Type> get types =>
      const [SimpleScalarPropertiesInput, _$SimpleScalarPropertiesInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  SimpleScalarPropertiesInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SimpleScalarPropertiesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as SimpleScalarPropertiesInput);
    final result = <Object?>[];
    if (payload.doubleValue != null) {
      result
        ..add('doubleValue')
        ..add(serializers.serialize(payload.doubleValue,
            specifiedType: const FullType.nullable(double)));
    }
    if (payload.floatValue != null) {
      result
        ..add('floatValue')
        ..add(serializers.serialize(payload.floatValue,
            specifiedType: const FullType.nullable(double)));
    }
    return result;
  }
}
