// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.empty_input_and_empty_output_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'empty_input_and_empty_output_input.g.dart';

abstract class EmptyInputAndEmptyOutputInput
    with
        _i1.HttpInput<EmptyInputAndEmptyOutputInputPayload>
    implements
        Built<EmptyInputAndEmptyOutputInput,
            EmptyInputAndEmptyOutputInputBuilder>,
        _i1.HasPayload<EmptyInputAndEmptyOutputInputPayload> {
  factory EmptyInputAndEmptyOutputInput(
          [void Function(EmptyInputAndEmptyOutputInputBuilder) updates]) =
      _$EmptyInputAndEmptyOutputInput;

  const EmptyInputAndEmptyOutputInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _EmptyInputAndEmptyOutputInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyInputAndEmptyOutputInputBuilder b) {}
  @override
  EmptyInputAndEmptyOutputInputPayload getPayload() =>
      EmptyInputAndEmptyOutputInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class EmptyInputAndEmptyOutputInputPayload
    implements
        Built<EmptyInputAndEmptyOutputInputPayload,
            EmptyInputAndEmptyOutputInputPayloadBuilder> {
  factory EmptyInputAndEmptyOutputInputPayload(
      [void Function(EmptyInputAndEmptyOutputInputPayloadBuilder)
          updates]) = _$EmptyInputAndEmptyOutputInputPayload;

  const EmptyInputAndEmptyOutputInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyInputAndEmptyOutputInputPayloadBuilder b) {}
}

class _EmptyInputAndEmptyOutputInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<EmptyInputAndEmptyOutputInput> {
  const _EmptyInputAndEmptyOutputInputAwsJson10Serializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [
        EmptyInputAndEmptyOutputInput,
        _$EmptyInputAndEmptyOutputInput,
        EmptyInputAndEmptyOutputInputPayload,
        _$EmptyInputAndEmptyOutputInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  EmptyInputAndEmptyOutputInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EmptyInputAndEmptyOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
