// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.malformed_range_override_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_range_override_input.g.dart';

abstract class MalformedRangeOverrideInput
    with
        _i1.HttpInput<MalformedRangeOverrideInput>,
        _i2.AWSEquatable<MalformedRangeOverrideInput>
    implements
        Built<MalformedRangeOverrideInput, MalformedRangeOverrideInputBuilder> {
  factory MalformedRangeOverrideInput(
          [void Function(MalformedRangeOverrideInputBuilder) updates]) =
      _$MalformedRangeOverrideInput;

  const MalformedRangeOverrideInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedRangeOverrideInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRangeOverrideInputBuilder b) {}
  int get byte;
  double get float;
  int get maxByte;
  double get maxFloat;
  int get minByte;
  double get minFloat;
  @override
  MalformedRangeOverrideInput getPayload() => this;
  @override
  List<Object?> get props =>
      [byte, float, maxByte, maxFloat, minByte, minFloat];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRangeOverrideInput');
    helper.add('byte', byte);
    helper.add('float', float);
    helper.add('maxByte', maxByte);
    helper.add('maxFloat', maxFloat);
    helper.add('minByte', minByte);
    helper.add('minFloat', minFloat);
    return helper.toString();
  }
}

class _MalformedRangeOverrideInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRangeOverrideInput> {
  const _MalformedRangeOverrideInputRestJson1Serializer()
      : super('MalformedRangeOverrideInput');

  @override
  Iterable<Type> get types =>
      const [MalformedRangeOverrideInput, _$MalformedRangeOverrideInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedRangeOverrideInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedRangeOverrideInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'byte':
          result.byte = (serializers.deserialize(value!,
              specifiedType: const FullType(int)) as int);
          break;
        case 'float':
          result.float = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
          break;
        case 'maxByte':
          result.maxByte = (serializers.deserialize(value!,
              specifiedType: const FullType(int)) as int);
          break;
        case 'maxFloat':
          result.maxFloat = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
          break;
        case 'minByte':
          result.minByte = (serializers.deserialize(value!,
              specifiedType: const FullType(int)) as int);
          break;
        case 'minFloat':
          result.minFloat = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedRangeOverrideInput);
    final result = <Object?>[
      'byte',
      serializers.serialize(payload.byte, specifiedType: const FullType(int)),
      'float',
      serializers.serialize(payload.float,
          specifiedType: const FullType(double)),
      'maxByte',
      serializers.serialize(payload.maxByte,
          specifiedType: const FullType(int)),
      'maxFloat',
      serializers.serialize(payload.maxFloat,
          specifiedType: const FullType(double)),
      'minByte',
      serializers.serialize(payload.minByte,
          specifiedType: const FullType(int)),
      'minFloat',
      serializers.serialize(payload.minFloat,
          specifiedType: const FullType(double))
    ];
    return result;
  }
}
