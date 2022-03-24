// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.http_payload_traits_with_media_type_input_output;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_traits_with_media_type_input_output.g.dart';

abstract class HttpPayloadTraitsWithMediaTypeInputOutput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<HttpPayloadTraitsWithMediaTypeInputOutput>
    implements
        Built<HttpPayloadTraitsWithMediaTypeInputOutput,
            HttpPayloadTraitsWithMediaTypeInputOutputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory HttpPayloadTraitsWithMediaTypeInputOutput(
      {_i2.Uint8List? blob, String? foo}) {
    return _$HttpPayloadTraitsWithMediaTypeInputOutput._(blob: blob, foo: foo);
  }

  const HttpPayloadTraitsWithMediaTypeInputOutput._();

  factory HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
      _i2.Uint8List? payload, _i3.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = HttpPayloadTraitsWithMediaTypeInputOutputBuilder();
    builder.blob = payload;
    if (request.headers['X-Foo'] != null) {
      builder.foo = request.headers['X-Foo']!;
    }
    return builder.build();
  }

  factory HttpPayloadTraitsWithMediaTypeInputOutput.fromResponse(
      _i2.Uint8List? payload, _i3.AWSBaseHttpResponse response) {
    final builder = HttpPayloadTraitsWithMediaTypeInputOutputBuilder();
    builder.blob = payload;
    if (response.headers['X-Foo'] != null) {
      builder.foo = response.headers['X-Foo']!;
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
  ];

  _i2.Uint8List? get blob;
  String? get foo;
  @override
  _i2.Uint8List? getPayload() => blob;
  @override
  List<Object?> get props => [blob, foo];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'HttpPayloadTraitsWithMediaTypeInputOutput');
    helper.add('blob', blob);
    helper.add('foo', foo);
    return helper.toString();
  }
}

class _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
      : super('HttpPayloadTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadTraitsWithMediaTypeInputOutput,
        _$HttpPayloadTraitsWithMediaTypeInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is HttpPayloadTraitsWithMediaTypeInputOutput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.Uint8List)) as Object);
  }
}
