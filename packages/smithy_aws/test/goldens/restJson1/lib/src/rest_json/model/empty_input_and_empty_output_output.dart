// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.empty_input_and_empty_output_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'empty_input_and_empty_output_output.g.dart';

abstract class EmptyInputAndEmptyOutputOutput
    implements
        Built<EmptyInputAndEmptyOutputOutput,
            EmptyInputAndEmptyOutputOutputBuilder>,
        _i1.HasPayload<EmptyInputAndEmptyOutputOutputPayload> {
  factory EmptyInputAndEmptyOutputOutput(
          [void Function(EmptyInputAndEmptyOutputOutputBuilder) updates]) =
      _$EmptyInputAndEmptyOutputOutput;

  const EmptyInputAndEmptyOutputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _EmptyInputAndEmptyOutputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyInputAndEmptyOutputOutputBuilder b) {}
  @override
  EmptyInputAndEmptyOutputOutputPayload getPayload() =>
      EmptyInputAndEmptyOutputOutputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class EmptyInputAndEmptyOutputOutputPayload
    implements
        Built<EmptyInputAndEmptyOutputOutputPayload,
            EmptyInputAndEmptyOutputOutputPayloadBuilder> {
  factory EmptyInputAndEmptyOutputOutputPayload(
      [void Function(EmptyInputAndEmptyOutputOutputPayloadBuilder)
          updates]) = _$EmptyInputAndEmptyOutputOutputPayload;

  const EmptyInputAndEmptyOutputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyInputAndEmptyOutputOutputPayloadBuilder b) {}
}

class _EmptyInputAndEmptyOutputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<EmptyInputAndEmptyOutputOutputPayload> {
  const _EmptyInputAndEmptyOutputOutputRestJson1Serializer()
      : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [
        EmptyInputAndEmptyOutputOutput,
        _$EmptyInputAndEmptyOutputOutput,
        EmptyInputAndEmptyOutputOutputPayload,
        _$EmptyInputAndEmptyOutputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EmptyInputAndEmptyOutputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EmptyInputAndEmptyOutputOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
