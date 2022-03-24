// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.streaming_traits_with_media_type_input_output;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'streaming_traits_with_media_type_input_output.g.dart';

abstract class StreamingTraitsWithMediaTypeInputOutput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<StreamingTraitsWithMediaTypeInputOutput>
    implements
        Built<StreamingTraitsWithMediaTypeInputOutput,
            StreamingTraitsWithMediaTypeInputOutputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory StreamingTraitsWithMediaTypeInputOutput(
      {_i2.Stream<List<int>>? blob, String? foo}) {
    return _$StreamingTraitsWithMediaTypeInputOutput._(blob: blob, foo: foo);
  }

  const StreamingTraitsWithMediaTypeInputOutput._();

  factory StreamingTraitsWithMediaTypeInputOutput.fromRequest(
      _i2.Stream<List<int>>? payload, _i3.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = StreamingTraitsWithMediaTypeInputOutputBuilder();
    builder.blob = payload;
    if (request.headers['X-Foo'] != null) {
      builder.foo = request.headers['X-Foo']!;
    }
    return builder.build();
  }

  factory StreamingTraitsWithMediaTypeInputOutput.fromResponse(
      _i2.Stream<List<int>>? payload, _i3.AWSBaseHttpResponse response) {
    final builder = StreamingTraitsWithMediaTypeInputOutputBuilder();
    builder.blob = payload;
    if (response.headers['X-Foo'] != null) {
      builder.foo = response.headers['X-Foo']!;
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()
  ];

  _i2.Stream<List<int>>? get blob;
  String? get foo;
  @override
  _i2.Stream<List<int>>? getPayload() => blob;
  @override
  List<Object?> get props => [blob, foo];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StreamingTraitsWithMediaTypeInputOutput');
    helper.add('blob', blob);
    helper.add('foo', foo);
    return helper.toString();
  }
}

class _StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _StreamingTraitsWithMediaTypeInputOutputRestJson1Serializer()
      : super('StreamingTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types => const [
        StreamingTraitsWithMediaTypeInputOutput,
        _$StreamingTraitsWithMediaTypeInputOutput
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
    final payload = object is StreamingTraitsWithMediaTypeInputOutput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}
