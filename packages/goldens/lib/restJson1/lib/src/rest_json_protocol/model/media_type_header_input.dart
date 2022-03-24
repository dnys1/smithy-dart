// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.media_type_header_input;

import 'dart:convert' as _i4;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
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
  factory MediaTypeHeaderInput({_i3.JsonObject? json}) {
    return _$MediaTypeHeaderInput._(json: json);
  }

  const MediaTypeHeaderInput._();

  factory MediaTypeHeaderInput.fromRequest(
      MediaTypeHeaderInputPayload payload, _i2.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = MediaTypeHeaderInputBuilder();
    if (request.headers['X-Json'] != null) {
      builder.json = _i3.JsonObject(_i4.jsonDecode(
          _i4.utf8.decode(_i4.base64Decode(request.headers['X-Json']!))));
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _MediaTypeHeaderInputRestJson1Serializer()
  ];

  _i3.JsonObject? get json;
  @override
  MediaTypeHeaderInputPayload getPayload() => MediaTypeHeaderInputPayload();
  @override
  List<Object?> get props => [json];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MediaTypeHeaderInput');
    helper.add('json', json);
    return helper.toString();
  }
}

@_i5.internal
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
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MediaTypeHeaderInputPayload');
    return helper.toString();
  }
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
