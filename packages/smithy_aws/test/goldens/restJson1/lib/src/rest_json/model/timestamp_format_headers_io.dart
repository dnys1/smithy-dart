// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.timestamp_format_headers_io;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'timestamp_format_headers_io.g.dart';

abstract class TimestampFormatHeadersIo
    with _i1.HttpInput<TimestampFormatHeadersIoPayload>
    implements
        Built<TimestampFormatHeadersIo, TimestampFormatHeadersIoBuilder>,
        _i1.EmptyPayload {
  factory TimestampFormatHeadersIo(
          [void Function(TimestampFormatHeadersIoBuilder) updates]) =
      _$TimestampFormatHeadersIo;

  const TimestampFormatHeadersIo._();

  static const List<_i1.SmithySerializer> serializers = [
    _TimestampFormatHeadersIoRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimestampFormatHeadersIoBuilder b) {}
  DateTime? get defaultFormat;
  DateTime? get memberDateTime;
  DateTime? get memberEpochSeconds;
  DateTime? get memberHttpDate;
  DateTime? get targetDateTime;
  DateTime? get targetEpochSeconds;
  DateTime? get targetHttpDate;
  TimestampFormatHeadersIoPayload getPayload() =>
      TimestampFormatHeadersIoPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class TimestampFormatHeadersIoPayload
    implements
        Built<TimestampFormatHeadersIoPayload,
            TimestampFormatHeadersIoPayloadBuilder>,
        _i1.EmptyPayload {
  factory TimestampFormatHeadersIoPayload(
          [void Function(TimestampFormatHeadersIoPayloadBuilder) updates]) =
      _$TimestampFormatHeadersIoPayload;

  const TimestampFormatHeadersIoPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimestampFormatHeadersIoPayloadBuilder b) {}
}

class _TimestampFormatHeadersIoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<TimestampFormatHeadersIoPayload> {
  const _TimestampFormatHeadersIoRestJson1Serializer()
      : super('TimestampFormatHeadersIO');

  @override
  Iterable<Type> get types => const [
        TimestampFormatHeadersIo,
        _$TimestampFormatHeadersIo,
        TimestampFormatHeadersIoPayload,
        _$TimestampFormatHeadersIoPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  TimestampFormatHeadersIoPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return TimestampFormatHeadersIoPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
