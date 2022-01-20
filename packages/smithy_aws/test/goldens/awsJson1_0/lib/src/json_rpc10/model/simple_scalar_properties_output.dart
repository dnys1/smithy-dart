// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.simple_scalar_properties_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_output.g.dart';

abstract class SimpleScalarPropertiesOutput
    implements
        Built<SimpleScalarPropertiesOutput,
            SimpleScalarPropertiesOutputBuilder>,
        _i1.HasPayload<SimpleScalarPropertiesOutputPayload> {
  factory SimpleScalarPropertiesOutput(
          [void Function(SimpleScalarPropertiesOutputBuilder) updates]) =
      _$SimpleScalarPropertiesOutput;

  const SimpleScalarPropertiesOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SimpleScalarPropertiesOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesOutputBuilder b) {}
  double? get doubleValue;
  double? get floatValue;
  @override
  SimpleScalarPropertiesOutputPayload getPayload() =>
      SimpleScalarPropertiesOutputPayload((b) => b
        ..doubleValue = doubleValue
        ..floatValue = floatValue);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class SimpleScalarPropertiesOutputPayload
    implements
        Built<SimpleScalarPropertiesOutputPayload,
            SimpleScalarPropertiesOutputPayloadBuilder> {
  factory SimpleScalarPropertiesOutputPayload(
          [void Function(SimpleScalarPropertiesOutputPayloadBuilder) updates]) =
      _$SimpleScalarPropertiesOutputPayload;

  const SimpleScalarPropertiesOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesOutputPayloadBuilder b) {}
  double? get doubleValue;
  double? get floatValue;
}

class _SimpleScalarPropertiesOutputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<SimpleScalarPropertiesOutput> {
  const _SimpleScalarPropertiesOutputAwsJson10Serializer()
      : super('SimpleScalarPropertiesOutput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarPropertiesOutput,
        _$SimpleScalarPropertiesOutput,
        SimpleScalarPropertiesOutputPayload,
        _$SimpleScalarPropertiesOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  SimpleScalarPropertiesOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SimpleScalarPropertiesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
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
    final payload = (object as SimpleScalarPropertiesOutput);
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
