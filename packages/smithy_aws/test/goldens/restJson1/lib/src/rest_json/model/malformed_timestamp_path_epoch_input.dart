// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_path_epoch_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_path_epoch_input.g.dart';

abstract class MalformedTimestampPathEpochInput
    with
        _i1.HttpInput<MalformedTimestampPathEpochInputPayload>
    implements
        Built<MalformedTimestampPathEpochInput,
            MalformedTimestampPathEpochInputBuilder>,
        _i1.HasPayload<MalformedTimestampPathEpochInputPayload> {
  factory MalformedTimestampPathEpochInput(
          [void Function(MalformedTimestampPathEpochInputBuilder) updates]) =
      _$MalformedTimestampPathEpochInput;

  const MalformedTimestampPathEpochInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampPathEpochInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathEpochInputBuilder b) {}
  DateTime get timestamp;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'timestamp':
        return timestamp.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedTimestampPathEpochInputPayload getPayload() =>
      MalformedTimestampPathEpochInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampPathEpochInputPayload
    implements
        Built<MalformedTimestampPathEpochInputPayload,
            MalformedTimestampPathEpochInputPayloadBuilder> {
  factory MalformedTimestampPathEpochInputPayload(
      [void Function(MalformedTimestampPathEpochInputPayloadBuilder)
          updates]) = _$MalformedTimestampPathEpochInputPayload;

  const MalformedTimestampPathEpochInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathEpochInputPayloadBuilder b) {}
}

class _MalformedTimestampPathEpochInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampPathEpochInputPayload> {
  const _MalformedTimestampPathEpochInputRestJson1Serializer()
      : super('MalformedTimestampPathEpochInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampPathEpochInput,
        _$MalformedTimestampPathEpochInput,
        MalformedTimestampPathEpochInputPayload,
        _$MalformedTimestampPathEpochInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampPathEpochInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampPathEpochInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
