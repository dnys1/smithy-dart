// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.empty_input_and_empty_output_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'empty_input_and_empty_output_input.g.dart';

abstract class EmptyInputAndEmptyOutputInput
    with
        _i1.HttpInput<EmptyInputAndEmptyOutputInput>
    implements
        Built<EmptyInputAndEmptyOutputInput,
            EmptyInputAndEmptyOutputInputBuilder>,
        _i1.EmptyPayload {
  factory EmptyInputAndEmptyOutputInput(
          [void Function(EmptyInputAndEmptyOutputInputBuilder) updates]) =
      _$EmptyInputAndEmptyOutputInput;

  const EmptyInputAndEmptyOutputInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _EmptyInputAndEmptyOutputInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyInputAndEmptyOutputInputBuilder b) {}
}

class _EmptyInputAndEmptyOutputInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<EmptyInputAndEmptyOutputInput> {
  const _EmptyInputAndEmptyOutputInputRestJson1Serializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types =>
      const [EmptyInputAndEmptyOutputInput, _$EmptyInputAndEmptyOutputInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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
