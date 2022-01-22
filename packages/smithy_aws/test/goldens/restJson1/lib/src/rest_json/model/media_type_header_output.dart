// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.media_type_header_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'media_type_header_output.g.dart';

abstract class MediaTypeHeaderOutput
    implements
        Built<MediaTypeHeaderOutput, MediaTypeHeaderOutputBuilder>,
        _i1.EmptyPayload {
  factory MediaTypeHeaderOutput(
          [void Function(MediaTypeHeaderOutputBuilder) updates]) =
      _$MediaTypeHeaderOutput;

  const MediaTypeHeaderOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MediaTypeHeaderOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderOutputBuilder b) {}
  _i2.JsonObject? get json;
  MediaTypeHeaderOutputPayload getPayload() => MediaTypeHeaderOutputPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MediaTypeHeaderOutputPayload
    implements
        Built<MediaTypeHeaderOutputPayload,
            MediaTypeHeaderOutputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MediaTypeHeaderOutputPayload(
          [void Function(MediaTypeHeaderOutputPayloadBuilder) updates]) =
      _$MediaTypeHeaderOutputPayload;

  const MediaTypeHeaderOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderOutputPayloadBuilder b) {}
}

class _MediaTypeHeaderOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MediaTypeHeaderOutputPayload> {
  const _MediaTypeHeaderOutputRestJson1Serializer()
      : super('MediaTypeHeaderOutput');

  @override
  Iterable<Type> get types => const [
        MediaTypeHeaderOutput,
        _$MediaTypeHeaderOutput,
        MediaTypeHeaderOutputPayload,
        _$MediaTypeHeaderOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MediaTypeHeaderOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MediaTypeHeaderOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
