// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.media_type_header_output;

import 'dart:convert' as _i4;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;

part 'media_type_header_output.g.dart';

abstract class MediaTypeHeaderOutput
    with _i1.AWSEquatable<MediaTypeHeaderOutput>
    implements
        Built<MediaTypeHeaderOutput, MediaTypeHeaderOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<MediaTypeHeaderOutputPayload> {
  factory MediaTypeHeaderOutput(
          [void Function(MediaTypeHeaderOutputBuilder) updates]) =
      _$MediaTypeHeaderOutput;

  const MediaTypeHeaderOutput._();

  factory MediaTypeHeaderOutput.fromResponse(
          MediaTypeHeaderOutputPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      MediaTypeHeaderOutput((b) {
        if (response.headers['X-Json'] != null) {
          b.json = _i3.JsonObject(_i4.jsonDecode(
              _i4.utf8.decode(_i4.base64Decode(response.headers['X-Json']!))));
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    _MediaTypeHeaderOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderOutputBuilder b) {}
  _i3.JsonObject? get json;
  @override
  MediaTypeHeaderOutputPayload getPayload() => MediaTypeHeaderOutputPayload();
  @override
  List<Object?> get props => [json];
}

@_i5.internal
@BuiltValue(nestedBuilders: false)
abstract class MediaTypeHeaderOutputPayload
    with
        _i1.AWSEquatable<MediaTypeHeaderOutputPayload>
    implements
        Built<MediaTypeHeaderOutputPayload,
            MediaTypeHeaderOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory MediaTypeHeaderOutputPayload(
          [void Function(MediaTypeHeaderOutputPayloadBuilder) updates]) =
      _$MediaTypeHeaderOutputPayload;

  const MediaTypeHeaderOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MediaTypeHeaderOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _MediaTypeHeaderOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MediaTypeHeaderOutputPayload> {
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
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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