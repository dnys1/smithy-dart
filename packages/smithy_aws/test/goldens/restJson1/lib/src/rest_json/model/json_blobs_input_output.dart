// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.json_blobs_input_output;

import 'dart:typed_data' as _i2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'json_blobs_input_output.g.dart';

abstract class JsonBlobsInputOutput
    with _i1.HttpInput<JsonBlobsInputOutputPayload>
    implements
        Built<JsonBlobsInputOutput, JsonBlobsInputOutputBuilder>,
        _i1.HasPayload<JsonBlobsInputOutputPayload> {
  factory JsonBlobsInputOutput(
          [void Function(JsonBlobsInputOutputBuilder) updates]) =
      _$JsonBlobsInputOutput;

  const JsonBlobsInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _JsonBlobsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonBlobsInputOutputBuilder b) {}
  _i2.Uint8List? get data;
  @override
  JsonBlobsInputOutputPayload getPayload() =>
      JsonBlobsInputOutputPayload((b) => b..data = data);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class JsonBlobsInputOutputPayload
    implements
        Built<JsonBlobsInputOutputPayload, JsonBlobsInputOutputPayloadBuilder> {
  factory JsonBlobsInputOutputPayload(
          [void Function(JsonBlobsInputOutputPayloadBuilder) updates]) =
      _$JsonBlobsInputOutputPayload;

  const JsonBlobsInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonBlobsInputOutputPayloadBuilder b) {}
  _i2.Uint8List? get data;
}

class _JsonBlobsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonBlobsInputOutputPayload> {
  const _JsonBlobsInputOutputRestJson1Serializer()
      : super('JsonBlobsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonBlobsInputOutput,
        _$JsonBlobsInputOutput,
        JsonBlobsInputOutputPayload,
        _$JsonBlobsInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  JsonBlobsInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonBlobsInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'data':
          if (value != null) {
            result.data = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is JsonBlobsInputOutput
        ? object.getPayload()
        : (object as JsonBlobsInputOutputPayload);
    final result = <Object?>[];
    if (payload.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(payload.data,
            specifiedType: const FullType.nullable(_i2.Uint8List)));
    }
    return result;
  }
}
