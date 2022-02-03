// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_timestamp_header_date_time_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_header_date_time_input.g.dart';

abstract class MalformedTimestampHeaderDateTimeInput
    with
        _i1.HttpInput<MalformedTimestampHeaderDateTimeInputPayload>,
        _i2.AWSEquatable<MalformedTimestampHeaderDateTimeInput>
    implements
        Built<MalformedTimestampHeaderDateTimeInput,
            MalformedTimestampHeaderDateTimeInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampHeaderDateTimeInputPayload> {
  factory MalformedTimestampHeaderDateTimeInput(
      [void Function(MalformedTimestampHeaderDateTimeInputBuilder)
          updates]) = _$MalformedTimestampHeaderDateTimeInput;

  const MalformedTimestampHeaderDateTimeInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampHeaderDateTimeInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderDateTimeInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampHeaderDateTimeInputPayload getPayload() =>
      MalformedTimestampHeaderDateTimeInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampHeaderDateTimeInput');
    helper.add('timestamp', timestamp);
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampHeaderDateTimeInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampHeaderDateTimeInputPayload>
    implements
        Built<MalformedTimestampHeaderDateTimeInputPayload,
            MalformedTimestampHeaderDateTimeInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampHeaderDateTimeInputPayload(
      [void Function(MalformedTimestampHeaderDateTimeInputPayloadBuilder)
          updates]) = _$MalformedTimestampHeaderDateTimeInputPayload;

  const MalformedTimestampHeaderDateTimeInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderDateTimeInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampHeaderDateTimeInputPayload');
    return helper.toString();
  }
}

class _MalformedTimestampHeaderDateTimeInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampHeaderDateTimeInputPayload> {
  const _MalformedTimestampHeaderDateTimeInputRestJson1Serializer()
      : super('MalformedTimestampHeaderDateTimeInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampHeaderDateTimeInput,
        _$MalformedTimestampHeaderDateTimeInput,
        MalformedTimestampHeaderDateTimeInputPayload,
        _$MalformedTimestampHeaderDateTimeInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampHeaderDateTimeInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampHeaderDateTimeInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
