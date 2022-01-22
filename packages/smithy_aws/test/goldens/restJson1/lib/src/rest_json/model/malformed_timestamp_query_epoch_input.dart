// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_query_epoch_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_query_epoch_input.g.dart';

abstract class MalformedTimestampQueryEpochInput
    with
        _i1.HttpInput<MalformedTimestampQueryEpochInputPayload>
    implements
        Built<MalformedTimestampQueryEpochInput,
            MalformedTimestampQueryEpochInputBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampQueryEpochInput(
          [void Function(MalformedTimestampQueryEpochInputBuilder) updates]) =
      _$MalformedTimestampQueryEpochInput;

  const MalformedTimestampQueryEpochInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampQueryEpochInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryEpochInputBuilder b) {}
  DateTime get timestamp;
  MalformedTimestampQueryEpochInputPayload getPayload() =>
      MalformedTimestampQueryEpochInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampQueryEpochInputPayload
    implements
        Built<MalformedTimestampQueryEpochInputPayload,
            MalformedTimestampQueryEpochInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampQueryEpochInputPayload(
      [void Function(MalformedTimestampQueryEpochInputPayloadBuilder)
          updates]) = _$MalformedTimestampQueryEpochInputPayload;

  const MalformedTimestampQueryEpochInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryEpochInputPayloadBuilder b) {}
}

class _MalformedTimestampQueryEpochInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampQueryEpochInputPayload> {
  const _MalformedTimestampQueryEpochInputRestJson1Serializer()
      : super('MalformedTimestampQueryEpochInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampQueryEpochInput,
        _$MalformedTimestampQueryEpochInput,
        MalformedTimestampQueryEpochInputPayload,
        _$MalformedTimestampQueryEpochInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampQueryEpochInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampQueryEpochInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
