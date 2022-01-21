// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_body_http_date_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_body_http_date_input.g.dart';

abstract class MalformedTimestampBodyHttpDateInput
    with
        _i1.HttpInput<MalformedTimestampBodyHttpDateInputPayload>
    implements
        Built<MalformedTimestampBodyHttpDateInput,
            MalformedTimestampBodyHttpDateInputBuilder>,
        _i1.HasPayload<MalformedTimestampBodyHttpDateInputPayload> {
  factory MalformedTimestampBodyHttpDateInput(
          [void Function(MalformedTimestampBodyHttpDateInputBuilder) updates]) =
      _$MalformedTimestampBodyHttpDateInput;

  const MalformedTimestampBodyHttpDateInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampBodyHttpDateInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyHttpDateInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampBodyHttpDateInputPayload getPayload() =>
      MalformedTimestampBodyHttpDateInputPayload(
          (b) => b..timestamp = timestamp);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampBodyHttpDateInputPayload
    implements
        Built<MalformedTimestampBodyHttpDateInputPayload,
            MalformedTimestampBodyHttpDateInputPayloadBuilder> {
  factory MalformedTimestampBodyHttpDateInputPayload(
      [void Function(MalformedTimestampBodyHttpDateInputPayloadBuilder)
          updates]) = _$MalformedTimestampBodyHttpDateInputPayload;

  const MalformedTimestampBodyHttpDateInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyHttpDateInputPayloadBuilder b) {}
  DateTime get timestamp;
}

class _MalformedTimestampBodyHttpDateInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampBodyHttpDateInputPayload> {
  const _MalformedTimestampBodyHttpDateInputRestJson1Serializer()
      : super('MalformedTimestampBodyHttpDateInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampBodyHttpDateInput,
        _$MalformedTimestampBodyHttpDateInput,
        MalformedTimestampBodyHttpDateInputPayload,
        _$MalformedTimestampBodyHttpDateInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampBodyHttpDateInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedTimestampBodyHttpDateInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp =
              _i1.TimestampSerializer.httpDate.deserialize(serializers, value!);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedTimestampBodyHttpDateInput
        ? object.getPayload()
        : (object as MalformedTimestampBodyHttpDateInputPayload);
    final result = <Object?>[
      'timestamp',
      _i1.TimestampSerializer.httpDate.serialize(serializers, payload.timestamp)
    ];
    return result;
  }
}
