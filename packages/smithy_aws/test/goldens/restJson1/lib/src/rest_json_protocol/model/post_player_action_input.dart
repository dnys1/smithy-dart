// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.post_player_action_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/player_action.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'post_player_action_input.g.dart';

abstract class PostPlayerActionInput
    with
        _i1.HttpInput<PostPlayerActionInput>,
        _i2.AWSEquatable<PostPlayerActionInput>
    implements Built<PostPlayerActionInput, PostPlayerActionInputBuilder> {
  factory PostPlayerActionInput(
          [void Function(PostPlayerActionInputBuilder) updates]) =
      _$PostPlayerActionInput;

  const PostPlayerActionInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _PostPlayerActionInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostPlayerActionInputBuilder b) {}
  _i3.PlayerAction get action;
  @override
  PostPlayerActionInput getPayload() => this;
  @override
  List<Object?> get props => [action];
}

class _PostPlayerActionInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PostPlayerActionInput> {
  const _PostPlayerActionInputRestJson1Serializer()
      : super('PostPlayerActionInput');

  @override
  Iterable<Type> get types =>
      const [PostPlayerActionInput, _$PostPlayerActionInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PostPlayerActionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PostPlayerActionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(value!,
                  specifiedType: const FullType(_i3.PlayerAction))
              as _i3.PlayerAction);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as PostPlayerActionInput);
    final result = <Object?>[
      'action',
      serializers.serialize(payload.action,
          specifiedType: const FullType(_i3.PlayerAction))
    ];
    return result;
  }
}
