// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_path_http_date_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_path_http_date_input.g.dart';

abstract class MalformedTimestampPathHttpDateInput
    with
        _i1.HttpInput<MalformedTimestampPathHttpDateInputPayload>,
        _i2.AWSEquatable<MalformedTimestampPathHttpDateInput>
    implements
        Built<MalformedTimestampPathHttpDateInput,
            MalformedTimestampPathHttpDateInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampPathHttpDateInputPayload> {
  factory MalformedTimestampPathHttpDateInput(
          [void Function(MalformedTimestampPathHttpDateInputBuilder) updates]) =
      _$MalformedTimestampPathHttpDateInput;

  const MalformedTimestampPathHttpDateInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampPathHttpDateInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathHttpDateInputBuilder b) {}
  DateTime get timestamp;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'timestamp':
        return _i1.Timestamp(timestamp)
            .format(_i1.TimestampFormat.httpDate)
            .toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedTimestampPathHttpDateInputPayload getPayload() =>
      MalformedTimestampPathHttpDateInputPayload();
  @override
  List<Object?> get props => [timestamp];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampPathHttpDateInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampPathHttpDateInputPayload>
    implements
        Built<MalformedTimestampPathHttpDateInputPayload,
            MalformedTimestampPathHttpDateInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampPathHttpDateInputPayload(
      [void Function(MalformedTimestampPathHttpDateInputPayloadBuilder)
          updates]) = _$MalformedTimestampPathHttpDateInputPayload;

  const MalformedTimestampPathHttpDateInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathHttpDateInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _MalformedTimestampPathHttpDateInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampPathHttpDateInputPayload> {
  const _MalformedTimestampPathHttpDateInputRestJson1Serializer()
      : super('MalformedTimestampPathHttpDateInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampPathHttpDateInput,
        _$MalformedTimestampPathHttpDateInput,
        MalformedTimestampPathHttpDateInputPayload,
        _$MalformedTimestampPathHttpDateInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampPathHttpDateInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampPathHttpDateInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}