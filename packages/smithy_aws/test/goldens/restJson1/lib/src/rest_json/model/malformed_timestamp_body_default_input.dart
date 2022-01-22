// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_timestamp_body_default_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_body_default_input.g.dart';

abstract class MalformedTimestampBodyDefaultInput
    with
        _i1.HttpInput<MalformedTimestampBodyDefaultInput>
    implements
        Built<MalformedTimestampBodyDefaultInput,
            MalformedTimestampBodyDefaultInputBuilder> {
  factory MalformedTimestampBodyDefaultInput(
          [void Function(MalformedTimestampBodyDefaultInputBuilder) updates]) =
      _$MalformedTimestampBodyDefaultInput;

  const MalformedTimestampBodyDefaultInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedTimestampBodyDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyDefaultInputBuilder b) {}
  DateTime get timestamp;
}

class _MalformedTimestampBodyDefaultInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedTimestampBodyDefaultInput> {
  const _MalformedTimestampBodyDefaultInputRestJson1Serializer()
      : super('MalformedTimestampBodyDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampBodyDefaultInput,
        _$MalformedTimestampBodyDefaultInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedTimestampBodyDefaultInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedTimestampBodyDefaultInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp = (serializers.deserialize(value!,
              specifiedType: const FullType(DateTime)) as DateTime);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedTimestampBodyDefaultInput);
    final result = <Object?>[
      'timestamp',
      serializers.serialize(payload.timestamp,
          specifiedType: const FullType(DateTime))
    ];
    return result;
  }
}
