// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.streaming_traits_require_length_input_output;

import 'dart:async' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'streaming_traits_require_length_input_output.g.dart';

abstract class StreamingTraitsRequireLengthInputOutput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>
    implements
        Built<StreamingTraitsRequireLengthInputOutput,
            StreamingTraitsRequireLengthInputOutputBuilder> {
  factory StreamingTraitsRequireLengthInputOutput(
      [void Function(StreamingTraitsRequireLengthInputOutputBuilder)
          updates]) = _$StreamingTraitsRequireLengthInputOutput;

  const StreamingTraitsRequireLengthInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _StreamingTraitsRequireLengthInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamingTraitsRequireLengthInputOutputBuilder b) {}
  _i2.Stream<List<int>>? get blob;
  String? get foo;
  _i2.Stream<List<int>>? getPayload() => blob;
}

class _StreamingTraitsRequireLengthInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _StreamingTraitsRequireLengthInputOutputRestJson1Serializer()
      : super('StreamingTraitsRequireLengthInputOutput');

  @override
  Iterable<Type> get types => const [
        StreamingTraitsRequireLengthInputOutput,
        _$StreamingTraitsRequireLengthInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Stream<List<int>> deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is StreamingTraitsRequireLengthInputOutput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}
