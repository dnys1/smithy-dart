// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.simple_scalar_properties_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_input_output.g.dart';

abstract class SimpleScalarPropertiesInputOutput
    with
        _i1.HttpInput<SimpleScalarPropertiesInputOutputPayload>,
        _i2.AWSEquatable<SimpleScalarPropertiesInputOutput>
    implements
        Built<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder>,
        _i1.HasPayload<SimpleScalarPropertiesInputOutputPayload> {
  factory SimpleScalarPropertiesInputOutput(
          [void Function(SimpleScalarPropertiesInputOutputBuilder) updates]) =
      _$SimpleScalarPropertiesInputOutput;

  const SimpleScalarPropertiesInputOutput._();

  factory SimpleScalarPropertiesInputOutput.fromRequest(
          SimpleScalarPropertiesInputOutputPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      SimpleScalarPropertiesInputOutput((b) {
        b.byteValue = payload.byteValue;
        b.doubleValue = payload.doubleValue;
        b.falseBooleanValue = payload.falseBooleanValue;
        b.floatValue = payload.floatValue;
        b.integerValue = payload.integerValue;
        b.longValue = payload.longValue;
        b.shortValue = payload.shortValue;
        b.stringValue = payload.stringValue;
        b.trueBooleanValue = payload.trueBooleanValue;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  factory SimpleScalarPropertiesInputOutput.fromResponse(
          SimpleScalarPropertiesInputOutputPayload payload,
          _i2.AWSBaseHttpResponse response) =>
      SimpleScalarPropertiesInputOutput((b) {
        b.byteValue = payload.byteValue;
        b.doubleValue = payload.doubleValue;
        b.falseBooleanValue = payload.falseBooleanValue;
        b.floatValue = payload.floatValue;
        b.integerValue = payload.integerValue;
        b.longValue = payload.longValue;
        b.shortValue = payload.shortValue;
        b.stringValue = payload.stringValue;
        b.trueBooleanValue = payload.trueBooleanValue;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _SimpleScalarPropertiesInputOutputRestJson1Serializer()
  ];

  int? get byteValue;
  double? get doubleValue;
  bool? get falseBooleanValue;
  double? get floatValue;
  String? get foo;
  int? get integerValue;
  _i3.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  bool? get trueBooleanValue;
  @override
  SimpleScalarPropertiesInputOutputPayload getPayload() =>
      SimpleScalarPropertiesInputOutputPayload((b) {
        b.byteValue = byteValue;
        b.doubleValue = doubleValue;
        b.falseBooleanValue = falseBooleanValue;
        b.floatValue = floatValue;
        b.integerValue = integerValue;
        b.longValue = longValue;
        b.shortValue = shortValue;
        b.stringValue = stringValue;
        b.trueBooleanValue = trueBooleanValue;
      });
  @override
  List<Object?> get props => [
        byteValue,
        doubleValue,
        falseBooleanValue,
        floatValue,
        foo,
        integerValue,
        longValue,
        shortValue,
        stringValue,
        trueBooleanValue
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutput');
    helper.add('byteValue', byteValue);
    helper.add('doubleValue', doubleValue);
    helper.add('falseBooleanValue', falseBooleanValue);
    helper.add('floatValue', floatValue);
    helper.add('foo', foo);
    helper.add('integerValue', integerValue);
    helper.add('longValue', longValue);
    helper.add('shortValue', shortValue);
    helper.add('stringValue', stringValue);
    helper.add('trueBooleanValue', trueBooleanValue);
    return helper.toString();
  }
}

@_i4.internal
abstract class SimpleScalarPropertiesInputOutputPayload
    with
        _i2.AWSEquatable<SimpleScalarPropertiesInputOutputPayload>
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
  _i3.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  bool? get trueBooleanValue;
  @override
  List<Object?> get props => [
        byteValue,
        doubleValue,
        falseBooleanValue,
        floatValue,
        integerValue,
        longValue,
        shortValue,
        stringValue,
        trueBooleanValue
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutputPayload');
    helper.add('byteValue', byteValue);
    helper.add('doubleValue', doubleValue);
    helper.add('falseBooleanValue', falseBooleanValue);
    helper.add('floatValue', floatValue);
    helper.add('integerValue', integerValue);
    helper.add('longValue', longValue);
    helper.add('shortValue', shortValue);
    helper.add('stringValue', stringValue);
    helper.add('trueBooleanValue', trueBooleanValue);
    return helper.toString();
  }
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
                specifiedType: const FullType(_i3.Int64)) as _i3.Int64);
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
        ..add(serializers.serialize(payload.byteValue!,
            specifiedType: const FullType(int)));
    }
    if (payload.doubleValue != null) {
      result
        ..add('DoubleDribble')
        ..add(serializers.serialize(payload.doubleValue!,
            specifiedType: const FullType(double)));
    }
    if (payload.falseBooleanValue != null) {
      result
        ..add('falseBooleanValue')
        ..add(serializers.serialize(payload.falseBooleanValue!,
            specifiedType: const FullType(bool)));
    }
    if (payload.floatValue != null) {
      result
        ..add('floatValue')
        ..add(serializers.serialize(payload.floatValue!,
            specifiedType: const FullType(double)));
    }
    if (payload.integerValue != null) {
      result
        ..add('integerValue')
        ..add(serializers.serialize(payload.integerValue!,
            specifiedType: const FullType(int)));
    }
    if (payload.longValue != null) {
      result
        ..add('longValue')
        ..add(serializers.serialize(payload.longValue!,
            specifiedType: const FullType(_i3.Int64)));
    }
    if (payload.shortValue != null) {
      result
        ..add('shortValue')
        ..add(serializers.serialize(payload.shortValue!,
            specifiedType: const FullType(int)));
    }
    if (payload.stringValue != null) {
      result
        ..add('stringValue')
        ..add(serializers.serialize(payload.stringValue!,
            specifiedType: const FullType(String)));
    }
    if (payload.trueBooleanValue != null) {
      result
        ..add('trueBooleanValue')
        ..add(serializers.serialize(payload.trueBooleanValue!,
            specifiedType: const FullType(bool)));
    }
    return result;
  }
}
