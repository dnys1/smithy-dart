// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_path_default_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_path_default_input.g.dart';

abstract class MalformedTimestampPathDefaultInput
    with
        _i1.HttpInput<MalformedTimestampPathDefaultInputPayload>
    implements
        Built<MalformedTimestampPathDefaultInput,
            MalformedTimestampPathDefaultInputBuilder>,
        _i1.HasPayload<MalformedTimestampPathDefaultInputPayload> {
  factory MalformedTimestampPathDefaultInput(
          [void Function(MalformedTimestampPathDefaultInputBuilder) updates]) =
      _$MalformedTimestampPathDefaultInput;

  const MalformedTimestampPathDefaultInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampPathDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathDefaultInputBuilder b) {}
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
  MalformedTimestampPathDefaultInputPayload getPayload() =>
      MalformedTimestampPathDefaultInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedTimestampPathDefaultInputPayload
    implements
        Built<MalformedTimestampPathDefaultInputPayload,
            MalformedTimestampPathDefaultInputPayloadBuilder> {
  factory MalformedTimestampPathDefaultInputPayload(
      [void Function(MalformedTimestampPathDefaultInputPayloadBuilder)
          updates]) = _$MalformedTimestampPathDefaultInputPayload;

  const MalformedTimestampPathDefaultInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathDefaultInputPayloadBuilder b) {}
}

class _MalformedTimestampPathDefaultInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampPathDefaultInputPayload> {
  const _MalformedTimestampPathDefaultInputRestJson1Serializer()
      : super('MalformedTimestampPathDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampPathDefaultInput,
        _$MalformedTimestampPathDefaultInput,
        MalformedTimestampPathDefaultInputPayload,
        _$MalformedTimestampPathDefaultInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampPathDefaultInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MalformedTimestampPathDefaultInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
