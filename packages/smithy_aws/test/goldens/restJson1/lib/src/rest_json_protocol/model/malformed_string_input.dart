// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_string_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_string_input.g.dart';

abstract class MalformedStringInput
    with
        _i1.HttpInput<MalformedStringInputPayload>,
        _i2.AWSEquatable<MalformedStringInput>
    implements
        Built<MalformedStringInput, MalformedStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedStringInputPayload> {
  factory MalformedStringInput(
          [void Function(MalformedStringInputBuilder) updates]) =
      _$MalformedStringInput;

  const MalformedStringInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedStringInputBuilder b) {}
  _i3.JsonObject? get blob;
  @override
  MalformedStringInputPayload getPayload() => MalformedStringInputPayload();
  @override
  List<Object?> get props => [blob];
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedStringInputPayload
    with _i2.AWSEquatable<MalformedStringInputPayload>
    implements
        Built<MalformedStringInputPayload, MalformedStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedStringInputPayload(
          [void Function(MalformedStringInputPayloadBuilder) updates]) =
      _$MalformedStringInputPayload;

  const MalformedStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedStringInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _MalformedStringInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedStringInputPayload> {
  const _MalformedStringInputRestJson1Serializer()
      : super('MalformedStringInput');

  @override
  Iterable<Type> get types => const [
        MalformedStringInput,
        _$MalformedStringInput,
        MalformedStringInputPayload,
        _$MalformedStringInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedStringInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}