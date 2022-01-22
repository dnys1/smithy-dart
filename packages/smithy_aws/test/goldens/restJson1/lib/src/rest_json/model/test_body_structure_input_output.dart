// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.test_body_structure_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:rest_json1/src/rest_json/model/test_config.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'test_body_structure_input_output.g.dart';

abstract class TestBodyStructureInputOutput
    with
        _i1.HttpInput<TestBodyStructureInputOutputPayload>
    implements
        Built<TestBodyStructureInputOutput,
            TestBodyStructureInputOutputBuilder> {
  factory TestBodyStructureInputOutput(
          [void Function(TestBodyStructureInputOutputBuilder) updates]) =
      _$TestBodyStructureInputOutput;

  const TestBodyStructureInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _TestBodyStructureInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestBodyStructureInputOutputBuilder b) {}
  _i2.TestConfig? get testConfig;
  String? get testId;
  TestBodyStructureInputOutputPayload getPayload() =>
      TestBodyStructureInputOutputPayload((b) => b..testConfig = testConfig);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class TestBodyStructureInputOutputPayload
    implements
        Built<TestBodyStructureInputOutputPayload,
            TestBodyStructureInputOutputPayloadBuilder> {
  factory TestBodyStructureInputOutputPayload(
          [void Function(TestBodyStructureInputOutputPayloadBuilder) updates]) =
      _$TestBodyStructureInputOutputPayload;

  const TestBodyStructureInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestBodyStructureInputOutputPayloadBuilder b) {}
  _i2.TestConfig? get testConfig;
}

class _TestBodyStructureInputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<TestBodyStructureInputOutputPayload> {
  const _TestBodyStructureInputOutputRestJson1Serializer()
      : super('TestBodyStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        TestBodyStructureInputOutput,
        _$TestBodyStructureInputOutput,
        TestBodyStructureInputOutputPayload,
        _$TestBodyStructureInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  TestBodyStructureInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = TestBodyStructureInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'testConfig':
          if (value != null) {
            result.testConfig = (serializers.deserialize(value,
                    specifiedType: const FullType(_i2.TestConfig))
                as _i2.TestConfig);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is TestBodyStructureInputOutput
        ? object.getPayload()
        : (object as TestBodyStructureInputOutputPayload);
    final result = <Object?>[];
    if (payload.testConfig != null) {
      result
        ..add('testConfig')
        ..add(serializers.serialize(payload.testConfig,
            specifiedType: const FullType.nullable(_i2.TestConfig)));
    }
    return result;
  }
}
