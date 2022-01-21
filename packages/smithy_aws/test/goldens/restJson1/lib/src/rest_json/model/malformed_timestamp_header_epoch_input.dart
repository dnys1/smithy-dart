// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_header_epoch_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_header_epoch_input.g.dart';

abstract class MalformedTimestampHeaderEpochInput
    with
        _i1.HttpInput<MalformedTimestampHeaderEpochInputPayload>
    implements
        Built<MalformedTimestampHeaderEpochInput,
            MalformedTimestampHeaderEpochInputBuilder>,
        _i1.HasPayload<MalformedTimestampHeaderEpochInputPayload> {
  factory MalformedTimestampHeaderEpochInput(
          [void Function(MalformedTimestampHeaderEpochInputBuilder) updates]) =
      _$MalformedTimestampHeaderEpochInput;

  const MalformedTimestampHeaderEpochInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampHeaderEpochInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderEpochInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampHeaderEpochInputPayload getPayload() =>
      MalformedTimestampHeaderEpochInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampHeaderEpochInputPayload
    implements
        Built<MalformedTimestampHeaderEpochInputPayload,
            MalformedTimestampHeaderEpochInputPayloadBuilder> {
  factory MalformedTimestampHeaderEpochInputPayload(
      [void Function(MalformedTimestampHeaderEpochInputPayloadBuilder)
          updates]) = _$MalformedTimestampHeaderEpochInputPayload;

  const MalformedTimestampHeaderEpochInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderEpochInputPayloadBuilder b) {}
}

class _MalformedTimestampHeaderEpochInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampHeaderEpochInputPayload> {
  const _MalformedTimestampHeaderEpochInputRestJson1Serializer()
      : super('MalformedTimestampHeaderEpochInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampHeaderEpochInput,
        _$MalformedTimestampHeaderEpochInput,
        MalformedTimestampHeaderEpochInputPayload,
        _$MalformedTimestampHeaderEpochInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampHeaderEpochInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampHeaderEpochInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
