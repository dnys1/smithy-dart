// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.test_payload_blob_input_output;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'test_payload_blob_input_output.g.dart';

abstract class TestPayloadBlobInputOutput
    with _i1.HttpInput<_i2.Uint8List>
    implements
        Built<TestPayloadBlobInputOutput, TestPayloadBlobInputOutputBuilder> {
  factory TestPayloadBlobInputOutput(
          [void Function(TestPayloadBlobInputOutputBuilder) updates]) =
      _$TestPayloadBlobInputOutput;

  const TestPayloadBlobInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _TestPayloadBlobInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestPayloadBlobInputOutputBuilder b) {}
  String? get contentType;
  _i2.Uint8List? get data;
  _i2.Uint8List? getPayload() => data;
}

class _TestPayloadBlobInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _TestPayloadBlobInputOutputRestJson1Serializer()
      : super('TestPayloadBlobInputOutput');

  @override
  Iterable<Type> get types =>
      const [TestPayloadBlobInputOutput, _$TestPayloadBlobInputOutput];
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
    final payload = object is TestPayloadBlobInputOutput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(payload,
        specifiedType: const FullType.nullable(_i2.Uint8List)) as Object);
  }
}
