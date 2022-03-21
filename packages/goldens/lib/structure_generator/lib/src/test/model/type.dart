// Generated code. DO NOT MODIFY.

library structure_generator.test.model.type;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'type.g.dart';

abstract class TestType
    with _i1.AWSEquatable<TestType>
    implements Built<TestType, TestTypeBuilder>, _i2.EmptyPayload {
  factory TestType([void Function(TestTypeBuilder) updates]) = _$TestType;

  const TestType._();

  static const List<_i2.SmithySerializer> serializers = [_TypeSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestTypeBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestType');
    return helper.toString();
  }
}

class _TypeSerializer extends _i2.StructuredSmithySerializer<TestType> {
  const _TypeSerializer() : super('Type');

  @override
  Iterable<Type> get types => const [TestType, _$TestType];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'smithy.dart', shape: 'genericProtocol')];
  @override
  TestType deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return TestTypeBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
