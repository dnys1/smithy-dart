// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.post_player_action_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:rest_json1/src/rest_json/model/player_action.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'post_player_action_output.g.dart';

abstract class PostPlayerActionOutput
    implements
        Built<PostPlayerActionOutput, PostPlayerActionOutputBuilder>,
        _i1.HasPayload<PostPlayerActionOutputPayload> {
  factory PostPlayerActionOutput(
          [void Function(PostPlayerActionOutputBuilder) updates]) =
      _$PostPlayerActionOutput;

  const PostPlayerActionOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _PostPlayerActionOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostPlayerActionOutputBuilder b) {}
  _i2.PlayerAction get action;
  @override
  PostPlayerActionOutputPayload getPayload() =>
      PostPlayerActionOutputPayload((b) => b..action = action);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class PostPlayerActionOutputPayload
    implements
        Built<PostPlayerActionOutputPayload,
            PostPlayerActionOutputPayloadBuilder> {
  factory PostPlayerActionOutputPayload(
          [void Function(PostPlayerActionOutputPayloadBuilder) updates]) =
      _$PostPlayerActionOutputPayload;

  const PostPlayerActionOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostPlayerActionOutputPayloadBuilder b) {}
  _i2.PlayerAction get action;
}

class _PostPlayerActionOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PostPlayerActionOutputPayload> {
  const _PostPlayerActionOutputRestJson1Serializer()
      : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types => const [
        PostPlayerActionOutput,
        _$PostPlayerActionOutput,
        PostPlayerActionOutputPayload,
        _$PostPlayerActionOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PostPlayerActionOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PostPlayerActionOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(value!,
                  specifiedType: const FullType(_i2.PlayerAction))
              as _i2.PlayerAction);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is PostPlayerActionOutput
        ? object.getPayload()
        : (object as PostPlayerActionOutputPayload);
    final result = <Object?>[
      'action',
      serializers.serialize(payload.action,
          specifiedType: const FullType(_i2.PlayerAction))
    ];
    return result;
  }
}
