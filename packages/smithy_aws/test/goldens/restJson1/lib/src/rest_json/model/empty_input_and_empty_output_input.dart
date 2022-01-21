// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.empty_input_and_empty_output_input;

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
    _EmptyInputAndEmptyOutputInputRestJson1Serializer()
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

class _EmptyInputAndEmptyOutputInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<EmptyInputAndEmptyOutputInputPayload> {
  const _EmptyInputAndEmptyOutputInputRestJson1Serializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EmptyInputAndEmptyOutputInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EmptyInputAndEmptyOutputInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
