// Generated code. DO NOT MODIFY.

library structure_generator.test.model.image;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'image.g.dart';

abstract class TestImage
    with _i1.AWSEquatable<TestImage>
    implements Built<TestImage, TestImageBuilder>, _i2.EmptyPayload {
  factory TestImage([void Function(TestImageBuilder) updates]) = _$TestImage;

  const TestImage._();

  static const List<_i2.SmithySerializer> serializers = [_ImageSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestImageBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestImage');
    return helper.toString();
  }
}

class _ImageSerializer extends _i2.StructuredSmithySerializer<TestImage> {
  const _ImageSerializer() : super('Image');

  @override
  Iterable<Type> get types => const [TestImage, _$TestImage];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [];
  @override
  TestImage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return TestImageBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
