// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation.model.malformed_required_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_required_input.g.dart';

abstract class MalformedRequiredInput
    with
        _i1.HttpInput<MalformedRequiredInputPayload>,
        _i2.AWSEquatable<MalformedRequiredInput>
    implements
        Built<MalformedRequiredInput, MalformedRequiredInputBuilder>,
        _i1.HasPayload<MalformedRequiredInputPayload> {
  factory MalformedRequiredInput(
          [void Function(MalformedRequiredInputBuilder) updates]) =
      _$MalformedRequiredInput;

  const MalformedRequiredInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedRequiredInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequiredInputBuilder b) {}
  String get string;
  String get stringInHeader;
  String get stringInQuery;
  @override
  MalformedRequiredInputPayload getPayload() =>
      MalformedRequiredInputPayload((b) => b..string = string);
  @override
  List<Object?> get props => [string, stringInHeader, stringInQuery];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedRequiredInputPayload
    with
        _i2.AWSEquatable<MalformedRequiredInputPayload>
    implements
        Built<MalformedRequiredInputPayload,
            MalformedRequiredInputPayloadBuilder> {
  factory MalformedRequiredInputPayload(
          [void Function(MalformedRequiredInputPayloadBuilder) updates]) =
      _$MalformedRequiredInputPayload;

  const MalformedRequiredInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequiredInputPayloadBuilder b) {}
  String get string;
  @override
  List<Object?> get props => [string];
}

class _MalformedRequiredInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRequiredInputPayload> {
  const _MalformedRequiredInputRestJson1Serializer()
      : super('MalformedRequiredInput');

  @override
  Iterable<Type> get types => const [
        MalformedRequiredInput,
        _$MalformedRequiredInput,
        MalformedRequiredInputPayload,
        _$MalformedRequiredInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedRequiredInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedRequiredInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'string':
          result.string = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedRequiredInput
        ? object.getPayload()
        : (object as MalformedRequiredInputPayload);
    final result = <Object?>[
      'string',
      serializers.serialize(payload.string,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}