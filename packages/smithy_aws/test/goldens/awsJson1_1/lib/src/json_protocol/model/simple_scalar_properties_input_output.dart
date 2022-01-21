// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.simple_scalar_properties_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_input_output.g.dart';

abstract class SimpleScalarPropertiesInputOutput
    with
        _i1.HttpInput<SimpleScalarPropertiesInputOutputPayload>
    implements
        Built<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder>,
        _i1.HasPayload<SimpleScalarPropertiesInputOutputPayload> {
  factory SimpleScalarPropertiesInputOutput(
          [void Function(SimpleScalarPropertiesInputOutputBuilder) updates]) =
      _$SimpleScalarPropertiesInputOutput;

  const SimpleScalarPropertiesInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SimpleScalarPropertiesInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputBuilder b) {}
  double? get doubleValue;
  double? get floatValue;
  @override
  SimpleScalarPropertiesInputOutputPayload getPayload() =>
      SimpleScalarPropertiesInputOutputPayload((b) => b
        ..doubleValue = doubleValue
        ..floatValue = floatValue);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class SimpleScalarPropertiesInputOutputPayload
    implements
        Built<SimpleScalarPropertiesInputOutputPayload,
            SimpleScalarPropertiesInputOutputPayloadBuilder> {
  factory SimpleScalarPropertiesInputOutputPayload(
      [void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)
          updates]) = _$SimpleScalarPropertiesInputOutputPayload;

  const SimpleScalarPropertiesInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputPayloadBuilder b) {}
  double? get doubleValue;
  double? get floatValue;
}

class _SimpleScalarPropertiesInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SimpleScalarPropertiesInputOutput> {
  const _SimpleScalarPropertiesInputOutputAwsJson11Serializer()
      : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarPropertiesInputOutput,
        _$SimpleScalarPropertiesInputOutput,
        SimpleScalarPropertiesInputOutputPayload,
        _$SimpleScalarPropertiesInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SimpleScalarPropertiesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SimpleScalarPropertiesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?);
          break;
        case 'floatValue':
          result.floatValue = (serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as SimpleScalarPropertiesInputOutput);
    final result = <Object?>[];
    if (payload.doubleValue != null) {
      result
        ..add('doubleValue')
        ..add(serializers.serialize(payload.doubleValue,
            specifiedType: const FullType(double)));
    }
    if (payload.floatValue != null) {
      result
        ..add('floatValue')
        ..add(serializers.serialize(payload.floatValue,
            specifiedType: const FullType(double)));
    }
    return result;
  }
}
