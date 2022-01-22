// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.test_no_payload_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'test_no_payload_input_output.g.dart';

abstract class TestNoPayloadInputOutput
    with _i1.HttpInput<TestNoPayloadInputOutputPayload>
    implements
        Built<TestNoPayloadInputOutput, TestNoPayloadInputOutputBuilder> {
  factory TestNoPayloadInputOutput(
          [void Function(TestNoPayloadInputOutputBuilder) updates]) =
      _$TestNoPayloadInputOutput;

  const TestNoPayloadInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _TestNoPayloadInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestNoPayloadInputOutputBuilder b) {}
  String? get testId;
  TestNoPayloadInputOutputPayload getPayload() =>
      TestNoPayloadInputOutputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class TestNoPayloadInputOutputPayload
    implements
        Built<TestNoPayloadInputOutputPayload,
            TestNoPayloadInputOutputPayloadBuilder> {
  factory TestNoPayloadInputOutputPayload(
          [void Function(TestNoPayloadInputOutputPayloadBuilder) updates]) =
      _$TestNoPayloadInputOutputPayload;

  const TestNoPayloadInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestNoPayloadInputOutputPayloadBuilder b) {}
}

class _TestNoPayloadInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<TestNoPayloadInputOutputPayload> {
  const _TestNoPayloadInputOutputRestJson1Serializer()
      : super('TestNoPayloadInputOutput');

  @override
  Iterable<Type> get types => const [
        TestNoPayloadInputOutput,
        _$TestNoPayloadInputOutput,
        TestNoPayloadInputOutputPayload,
        _$TestNoPayloadInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  TestNoPayloadInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return TestNoPayloadInputOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
