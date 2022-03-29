// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.post_player_action_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/player_action.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'post_player_action_output.g.dart';

abstract class PostPlayerActionOutput
    with _i1.AWSEquatable<PostPlayerActionOutput>
    implements Built<PostPlayerActionOutput, PostPlayerActionOutputBuilder> {
  factory PostPlayerActionOutput(
          [void Function(PostPlayerActionOutputBuilder) updates]) =
      _$PostPlayerActionOutput;

  const PostPlayerActionOutput._();

  /// Constructs a [PostPlayerActionOutput] from a [payload] and [response].
  factory PostPlayerActionOutput.fromResponse(
          PostPlayerActionOutput payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _PostPlayerActionOutputRestJson1Serializer()
  ];

  _i3.PlayerAction get action;
  @override
  List<Object?> get props => [action];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostPlayerActionOutput');
    helper.add('action', action);
    return helper.toString();
  }
}

class _PostPlayerActionOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<PostPlayerActionOutput> {
  const _PostPlayerActionOutputRestJson1Serializer()
      : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types =>
      const [PostPlayerActionOutput, _$PostPlayerActionOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PostPlayerActionOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PostPlayerActionOutputBuilder();
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
    final payload = (object as PostPlayerActionOutput);
    final result = <Object?>[
      'action',
      serializers.serialize(payload.action,
          specifiedType: const FullType(_i3.PlayerAction))
    ];
    return result;
  }
}
