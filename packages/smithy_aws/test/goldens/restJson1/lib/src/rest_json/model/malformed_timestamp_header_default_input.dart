// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_header_default_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_header_default_input.g.dart';

abstract class MalformedTimestampHeaderDefaultInput
    with
        _i1.HttpInput<MalformedTimestampHeaderDefaultInputPayload>
    implements
        Built<MalformedTimestampHeaderDefaultInput,
            MalformedTimestampHeaderDefaultInputBuilder> {
  factory MalformedTimestampHeaderDefaultInput(
      [void Function(MalformedTimestampHeaderDefaultInputBuilder)
          updates]) = _$MalformedTimestampHeaderDefaultInput;

  const MalformedTimestampHeaderDefaultInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampHeaderDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderDefaultInputBuilder b) {}
  DateTime get timestamp;
  MalformedTimestampHeaderDefaultInputPayload getPayload() =>
      MalformedTimestampHeaderDefaultInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampHeaderDefaultInputPayload
    implements
        Built<MalformedTimestampHeaderDefaultInputPayload,
            MalformedTimestampHeaderDefaultInputPayloadBuilder> {
  factory MalformedTimestampHeaderDefaultInputPayload(
      [void Function(MalformedTimestampHeaderDefaultInputPayloadBuilder)
          updates]) = _$MalformedTimestampHeaderDefaultInputPayload;

  const MalformedTimestampHeaderDefaultInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderDefaultInputPayloadBuilder b) {}
}

class _MalformedTimestampHeaderDefaultInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampHeaderDefaultInputPayload> {
  const _MalformedTimestampHeaderDefaultInputRestJson1Serializer()
      : super('MalformedTimestampHeaderDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampHeaderDefaultInput,
        _$MalformedTimestampHeaderDefaultInput,
        MalformedTimestampHeaderDefaultInputPayload,
        _$MalformedTimestampHeaderDefaultInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampHeaderDefaultInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampHeaderDefaultInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
