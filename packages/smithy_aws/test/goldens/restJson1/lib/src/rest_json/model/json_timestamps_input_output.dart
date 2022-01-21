// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.json_timestamps_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'json_timestamps_input_output.g.dart';

abstract class JsonTimestampsInputOutput
    with _i1.HttpInput<JsonTimestampsInputOutputPayload>
    implements
        Built<JsonTimestampsInputOutput, JsonTimestampsInputOutputBuilder>,
        _i1.HasPayload<JsonTimestampsInputOutputPayload> {
  factory JsonTimestampsInputOutput(
          [void Function(JsonTimestampsInputOutputBuilder) updates]) =
      _$JsonTimestampsInputOutput;

  const JsonTimestampsInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _JsonTimestampsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonTimestampsInputOutputBuilder b) {}
  DateTime? get dateTime;
  DateTime? get epochSeconds;
  DateTime? get httpDate;
  DateTime? get normal;
  @override
  JsonTimestampsInputOutputPayload getPayload() =>
      JsonTimestampsInputOutputPayload((b) => b
        ..dateTime = dateTime
        ..epochSeconds = epochSeconds
        ..httpDate = httpDate
        ..normal = normal);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class JsonTimestampsInputOutputPayload
    implements
        Built<JsonTimestampsInputOutputPayload,
            JsonTimestampsInputOutputPayloadBuilder> {
  factory JsonTimestampsInputOutputPayload(
          [void Function(JsonTimestampsInputOutputPayloadBuilder) updates]) =
      _$JsonTimestampsInputOutputPayload;

  const JsonTimestampsInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonTimestampsInputOutputPayloadBuilder b) {}
  DateTime? get dateTime;
  DateTime? get epochSeconds;
  DateTime? get httpDate;
  DateTime? get normal;
}

class _JsonTimestampsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonTimestampsInputOutputPayload> {
  const _JsonTimestampsInputOutputRestJson1Serializer()
      : super('JsonTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonTimestampsInputOutput,
        _$JsonTimestampsInputOutput,
        JsonTimestampsInputOutputPayload,
        _$JsonTimestampsInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  JsonTimestampsInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonTimestampsInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'dateTime':
          if (value != null) {
            result.dateTime = _i1.TimestampSerializer.dateTime
                .deserialize(serializers, value);
          }
          break;
        case 'epochSeconds':
          if (value != null) {
            result.epochSeconds = _i1.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'httpDate':
          if (value != null) {
            result.httpDate = _i1.TimestampSerializer.httpDate
                .deserialize(serializers, value);
          }
          break;
        case 'normal':
          if (value != null) {
            result.normal = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is JsonTimestampsInputOutput
        ? object.getPayload()
        : (object as JsonTimestampsInputOutputPayload);
    final result = <Object?>[];
    if (payload.dateTime != null) {
      result
        ..add('dateTime')
        ..add(_i1.TimestampSerializer.dateTime
            .serialize(serializers, payload.dateTime!));
    }
    if (payload.epochSeconds != null) {
      result
        ..add('epochSeconds')
        ..add(_i1.TimestampSerializer.epochSeconds
            .serialize(serializers, payload.epochSeconds!));
    }
    if (payload.httpDate != null) {
      result
        ..add('httpDate')
        ..add(_i1.TimestampSerializer.httpDate
            .serialize(serializers, payload.httpDate!));
    }
    if (payload.normal != null) {
      result
        ..add('normal')
        ..add(serializers.serialize(payload.normal,
            specifiedType: const FullType.nullable(DateTime)));
    }
    return result;
  }
}
