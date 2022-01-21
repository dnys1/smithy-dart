// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.streaming_traits_input_output;

import 'dart:async' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'streaming_traits_input_output.g.dart';

abstract class StreamingTraitsInputOutput
    with _i1.HttpInput<_i2.Stream<List<int>>>
    implements
        Built<StreamingTraitsInputOutput, StreamingTraitsInputOutputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory StreamingTraitsInputOutput(
          [void Function(StreamingTraitsInputOutputBuilder) updates]) =
      _$StreamingTraitsInputOutput;

  const StreamingTraitsInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _StreamingTraitsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamingTraitsInputOutputBuilder b) {}
  _i2.Stream<List<int>>? get blob;
  String? get foo;
  @override
  _i2.Stream<List<int>>? getPayload() => blob;
}

class _StreamingTraitsInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _StreamingTraitsInputOutputRestJson1Serializer()
      : super('StreamingTraitsInputOutput');

  @override
  Iterable<Type> get types =>
      const [StreamingTraitsInputOutput, _$StreamingTraitsInputOutput];
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
    final payload = object is StreamingTraitsInputOutput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}
