// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.timestamp_format_headers_io;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'timestamp_format_headers_io.g.dart';

abstract class TimestampFormatHeadersIo
    with
        _i1.HttpInput<TimestampFormatHeadersIoPayload>,
        _i2.AWSEquatable<TimestampFormatHeadersIo>
    implements
        Built<TimestampFormatHeadersIo, TimestampFormatHeadersIoBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<TimestampFormatHeadersIoPayload> {
  factory TimestampFormatHeadersIo(
          [void Function(TimestampFormatHeadersIoBuilder) updates]) =
      _$TimestampFormatHeadersIo;

  const TimestampFormatHeadersIo._();

  factory TimestampFormatHeadersIo.fromResponse(
          TimestampFormatHeadersIoPayload payload,
          _i2.AWSStreamedHttpResponse response) =>
      TimestampFormatHeadersIo((b) {
        if (response.headers['X-memberEpochSeconds'] != null) {
          b.memberEpochSeconds = _i1.Timestamp.parse(
                  int.parse(response.headers['X-memberEpochSeconds']!),
                  format: _i1.TimestampFormat.epochSeconds)
              .asDateTime;
        }
        if (response.headers['X-memberHttpDate'] != null) {
          b.memberHttpDate = _i1.Timestamp.parse(
                  response.headers['X-memberHttpDate']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['X-memberDateTime'] != null) {
          b.memberDateTime = _i1.Timestamp.parse(
                  response.headers['X-memberDateTime']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
        if (response.headers['X-defaultFormat'] != null) {
          b.defaultFormat = _i1.Timestamp.parse(
                  response.headers['X-defaultFormat']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['X-targetEpochSeconds'] != null) {
          b.targetEpochSeconds = _i1.Timestamp.parse(
                  int.parse(response.headers['X-targetEpochSeconds']!),
                  format: _i1.TimestampFormat.epochSeconds)
              .asDateTime;
        }
        if (response.headers['X-targetHttpDate'] != null) {
          b.targetHttpDate = _i1.Timestamp.parse(
                  response.headers['X-targetHttpDate']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['X-targetDateTime'] != null) {
          b.targetDateTime = _i1.Timestamp.parse(
                  response.headers['X-targetDateTime']!,
                  format: _i1.TimestampFormat.dateTime)
              .asDateTime;
        }
      });

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
  @override
  TimestampFormatHeadersIoPayload getPayload() =>
      TimestampFormatHeadersIoPayload();
  @override
  List<Object?> get props => [
        defaultFormat,
        memberDateTime,
        memberEpochSeconds,
        memberHttpDate,
        targetDateTime,
        targetEpochSeconds,
        targetHttpDate
      ];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class TimestampFormatHeadersIoPayload
    with
        _i2.AWSEquatable<TimestampFormatHeadersIoPayload>
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
  @override
  List<Object?> get props => [];
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