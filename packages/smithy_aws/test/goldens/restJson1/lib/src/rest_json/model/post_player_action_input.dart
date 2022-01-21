// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.post_player_action_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:rest_json1/src/rest_json/model/player_action.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'post_player_action_input.g.dart';

abstract class PostPlayerActionInput
    with _i1.HttpInput<PostPlayerActionInputPayload>
    implements
        Built<PostPlayerActionInput, PostPlayerActionInputBuilder>,
        _i1.HasPayload<PostPlayerActionInputPayload> {
  factory PostPlayerActionInput(
          [void Function(PostPlayerActionInputBuilder) updates]) =
      _$PostPlayerActionInput;

  const PostPlayerActionInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _PostPlayerActionInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostPlayerActionInputBuilder b) {}
  _i2.PlayerAction get action;
  @override
  PostPlayerActionInputPayload getPayload() =>
      PostPlayerActionInputPayload((b) => b..action = action);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class PostPlayerActionInputPayload
    implements
        Built<PostPlayerActionInputPayload,
            PostPlayerActionInputPayloadBuilder> {
  factory PostPlayerActionInputPayload(
          [void Function(PostPlayerActionInputPayloadBuilder) updates]) =
      _$PostPlayerActionInputPayload;

  const PostPlayerActionInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostPlayerActionInputPayloadBuilder b) {}
  _i2.PlayerAction get action;
}

class _PostPlayerActionInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PostPlayerActionInputPayload> {
  const _PostPlayerActionInputRestJson1Serializer()
      : super('PostPlayerActionInput');

  @override
  Iterable<Type> get types => const [
        PostPlayerActionInput,
        _$PostPlayerActionInput,
        PostPlayerActionInputPayload,
        _$PostPlayerActionInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PostPlayerActionInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PostPlayerActionInputPayloadBuilder();
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
    final payload = object is PostPlayerActionInput
        ? object.getPayload()
        : (object as PostPlayerActionInputPayload);
    final result = <Object?>[
      'action',
      serializers.serialize(payload.action,
          specifiedType: const FullType(_i2.PlayerAction))
    ];
    return result;
  }
}
