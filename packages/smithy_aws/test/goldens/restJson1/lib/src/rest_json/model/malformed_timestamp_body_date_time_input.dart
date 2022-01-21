// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_body_date_time_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_body_date_time_input.g.dart';

abstract class MalformedTimestampBodyDateTimeInput
    with
        _i1.HttpInput<MalformedTimestampBodyDateTimeInputPayload>
    implements
        Built<MalformedTimestampBodyDateTimeInput,
            MalformedTimestampBodyDateTimeInputBuilder>,
        _i1.HasPayload<MalformedTimestampBodyDateTimeInputPayload> {
  factory MalformedTimestampBodyDateTimeInput(
          [void Function(MalformedTimestampBodyDateTimeInputBuilder) updates]) =
      _$MalformedTimestampBodyDateTimeInput;

  const MalformedTimestampBodyDateTimeInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampBodyDateTimeInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyDateTimeInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampBodyDateTimeInputPayload getPayload() =>
      MalformedTimestampBodyDateTimeInputPayload(
          (b) => b..timestamp = timestamp);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampBodyDateTimeInputPayload
    implements
        Built<MalformedTimestampBodyDateTimeInputPayload,
            MalformedTimestampBodyDateTimeInputPayloadBuilder> {
  factory MalformedTimestampBodyDateTimeInputPayload(
      [void Function(MalformedTimestampBodyDateTimeInputPayloadBuilder)
          updates]) = _$MalformedTimestampBodyDateTimeInputPayload;

  const MalformedTimestampBodyDateTimeInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyDateTimeInputPayloadBuilder b) {}
  DateTime get timestamp;
}

class _MalformedTimestampBodyDateTimeInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampBodyDateTimeInputPayload> {
  const _MalformedTimestampBodyDateTimeInputRestJson1Serializer()
      : super('MalformedTimestampBodyDateTimeInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampBodyDateTimeInput,
        _$MalformedTimestampBodyDateTimeInput,
        MalformedTimestampBodyDateTimeInputPayload,
        _$MalformedTimestampBodyDateTimeInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampBodyDateTimeInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedTimestampBodyDateTimeInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp =
              _i1.TimestampSerializer.dateTime.deserialize(serializers, value!);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedTimestampBodyDateTimeInput
        ? object.getPayload()
        : (object as MalformedTimestampBodyDateTimeInputPayload);
    final result = <Object?>[
      'timestamp',
      _i1.TimestampSerializer.dateTime.serialize(serializers, payload.timestamp)
    ];
    return result;
  }
}
