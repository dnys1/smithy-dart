// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.simple_scalar_properties_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:meta/meta.dart' as _i3;
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
    _SimpleScalarPropertiesInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputBuilder b) {}
  int? get byteValue;
  double? get doubleValue;
  bool? get falseBooleanValue;
  double? get floatValue;
  String? get foo;
  int? get integerValue;
  _i2.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  bool? get trueBooleanValue;
  @override
  SimpleScalarPropertiesInputOutputPayload getPayload() =>
      SimpleScalarPropertiesInputOutputPayload((b) => b
        ..byteValue = byteValue
        ..doubleValue = doubleValue
        ..falseBooleanValue = falseBooleanValue
        ..floatValue = floatValue
        ..integerValue = integerValue
        ..longValue = longValue
        ..shortValue = shortValue
        ..stringValue = stringValue
        ..trueBooleanValue = trueBooleanValue);
}

@_i3.internal
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
  int? get byteValue;
  double? get doubleValue;
  bool? get falseBooleanValue;
  double? get floatValue;
  int? get integerValue;
  _i2.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  bool? get trueBooleanValue;
}

class _SimpleScalarPropertiesInputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<SimpleScalarPropertiesInputOutputPayload> {
  const _SimpleScalarPropertiesInputOutputRestJson1Serializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  SimpleScalarPropertiesInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SimpleScalarPropertiesInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'byteValue':
          if (value != null) {
            result.byteValue = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'DoubleDribble':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'falseBooleanValue':
          if (value != null) {
            result.falseBooleanValue = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'integerValue':
          if (value != null) {
            result.integerValue = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'longValue':
          if (value != null) {
            result.longValue = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.Int64)) as _i2.Int64);
          }
          break;
        case 'shortValue':
          if (value != null) {
            result.shortValue = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'stringValue':
          if (value != null) {
            result.stringValue = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'trueBooleanValue':
          if (value != null) {
            result.trueBooleanValue = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is SimpleScalarPropertiesInputOutput
        ? object.getPayload()
        : (object as SimpleScalarPropertiesInputOutputPayload);
    final result = <Object?>[];
    if (payload.byteValue != null) {
      result
        ..add('byteValue')
        ..add(serializers.serialize(payload.byteValue,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.doubleValue != null) {
      result
        ..add('DoubleDribble')
        ..add(serializers.serialize(payload.doubleValue,
            specifiedType: const FullType.nullable(double)));
    }
    if (payload.falseBooleanValue != null) {
      result
        ..add('falseBooleanValue')
        ..add(serializers.serialize(payload.falseBooleanValue,
            specifiedType: const FullType.nullable(bool)));
    }
    if (payload.floatValue != null) {
      result
        ..add('floatValue')
        ..add(serializers.serialize(payload.floatValue,
            specifiedType: const FullType.nullable(double)));
    }
    if (payload.integerValue != null) {
      result
        ..add('integerValue')
        ..add(serializers.serialize(payload.integerValue,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.longValue != null) {
      result
        ..add('longValue')
        ..add(serializers.serialize(payload.longValue,
            specifiedType: const FullType.nullable(_i2.Int64)));
    }
    if (payload.shortValue != null) {
      result
        ..add('shortValue')
        ..add(serializers.serialize(payload.shortValue,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.stringValue != null) {
      result
        ..add('stringValue')
        ..add(serializers.serialize(payload.stringValue,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.trueBooleanValue != null) {
      result
        ..add('trueBooleanValue')
        ..add(serializers.serialize(payload.trueBooleanValue,
            specifiedType: const FullType.nullable(bool)));
    }
    return result;
  }
}
