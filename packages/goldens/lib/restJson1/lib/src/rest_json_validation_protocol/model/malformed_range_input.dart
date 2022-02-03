// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.malformed_range_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_range_input.g.dart';

abstract class MalformedRangeInput
    with
        _i1.HttpInput<MalformedRangeInput>,
        _i2.AWSEquatable<MalformedRangeInput>
    implements Built<MalformedRangeInput, MalformedRangeInputBuilder> {
  factory MalformedRangeInput(
          [void Function(MalformedRangeInputBuilder) updates]) =
      _$MalformedRangeInput;

  const MalformedRangeInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedRangeInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRangeInputBuilder b) {}
  int get byte;
  double get float;
  int get maxByte;
  double get maxFloat;
  int get minByte;
  double get minFloat;
  @override
  MalformedRangeInput getPayload() => this;
  @override
  List<Object?> get props =>
      [byte, float, maxByte, maxFloat, minByte, minFloat];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRangeInput');
    helper.add('byte', byte);
    helper.add('float', float);
    helper.add('maxByte', maxByte);
    helper.add('maxFloat', maxFloat);
    helper.add('minByte', minByte);
    helper.add('minFloat', minFloat);
    return helper.toString();
  }
}

class _MalformedRangeInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRangeInput> {
  const _MalformedRangeInputRestJson1Serializer()
      : super('MalformedRangeInput');

  @override
  Iterable<Type> get types =>
      const [MalformedRangeInput, _$MalformedRangeInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedRangeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedRangeInputBuilder();
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
    final payload = (object as MalformedRangeInput);
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
