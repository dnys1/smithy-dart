// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_timestamp_query_default_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_query_default_input.g.dart';

abstract class MalformedTimestampQueryDefaultInput
    with
        _i1.HttpInput<MalformedTimestampQueryDefaultInputPayload>,
        _i2.AWSEquatable<MalformedTimestampQueryDefaultInput>
    implements
        Built<MalformedTimestampQueryDefaultInput,
            MalformedTimestampQueryDefaultInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampQueryDefaultInputPayload> {
  factory MalformedTimestampQueryDefaultInput(
          [void Function(MalformedTimestampQueryDefaultInputBuilder) updates]) =
      _$MalformedTimestampQueryDefaultInput;

  const MalformedTimestampQueryDefaultInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampQueryDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryDefaultInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampQueryDefaultInputPayload getPayload() =>
      MalformedTimestampQueryDefaultInputPayload();
  @override
  List<Object?> get props => [timestamp];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampQueryDefaultInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampQueryDefaultInputPayload>
    implements
        Built<MalformedTimestampQueryDefaultInputPayload,
            MalformedTimestampQueryDefaultInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampQueryDefaultInputPayload(
      [void Function(MalformedTimestampQueryDefaultInputPayloadBuilder)
          updates]) = _$MalformedTimestampQueryDefaultInputPayload;

  const MalformedTimestampQueryDefaultInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryDefaultInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _MalformedTimestampQueryDefaultInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampQueryDefaultInputPayload> {
  const _MalformedTimestampQueryDefaultInputRestJson1Serializer()
      : super('MalformedTimestampQueryDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampQueryDefaultInput,
        _$MalformedTimestampQueryDefaultInput,
        MalformedTimestampQueryDefaultInputPayload,
        _$MalformedTimestampQueryDefaultInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampQueryDefaultInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampQueryDefaultInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}