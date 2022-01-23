// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.media_type_header_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'media_type_header_input.g.dart';

abstract class MediaTypeHeaderInput
    with
        _i1.HttpInput<MediaTypeHeaderInputPayload>,
        _i2.AWSEquatable<MediaTypeHeaderInput>
    implements
        Built<MediaTypeHeaderInput, MediaTypeHeaderInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MediaTypeHeaderInputPayload> {
  factory MediaTypeHeaderInput(
          [void Function(MediaTypeHeaderInputBuilder) updates]) =
      _$MediaTypeHeaderInput;

  const MediaTypeHeaderInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MediaTypeHeaderInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderInputBuilder b) {}
  _i3.JsonObject? get json;
  @override
  MediaTypeHeaderInputPayload getPayload() => MediaTypeHeaderInputPayload();
  @override
  List<Object?> get props => [json];
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class MediaTypeHeaderInputPayload
    with _i2.AWSEquatable<MediaTypeHeaderInputPayload>
    implements
        Built<MediaTypeHeaderInputPayload, MediaTypeHeaderInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MediaTypeHeaderInputPayload(
          [void Function(MediaTypeHeaderInputPayloadBuilder) updates]) =
      _$MediaTypeHeaderInputPayload;

  const MediaTypeHeaderInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _MediaTypeHeaderInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MediaTypeHeaderInputPayload> {
  const _MediaTypeHeaderInputRestJson1Serializer()
      : super('MediaTypeHeaderInput');

  @override
  Iterable<Type> get types => const [
        MediaTypeHeaderInput,
        _$MediaTypeHeaderInput,
        MediaTypeHeaderInputPayload,
        _$MediaTypeHeaderInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MediaTypeHeaderInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MediaTypeHeaderInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
