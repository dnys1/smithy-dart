// Generated code. DO NOT MODIFY.

library structure_generator.test.model.image_builder;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'image_builder.g.dart';

abstract class ImageBuilder
    with _i1.AWSEquatable<ImageBuilder>
    implements Built<ImageBuilder, ImageBuilderBuilder>, _i2.EmptyPayload {
  factory ImageBuilder([void Function(ImageBuilderBuilder) updates]) =
      _$ImageBuilder;

  const ImageBuilder._();

  static const List<_i2.SmithySerializer> serializers = [
    _ImageBuilderSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImageBuilderBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageBuilder');
    return helper.toString();
  }
}

class _ImageBuilderSerializer
    extends _i2.StructuredSmithySerializer<ImageBuilder> {
  const _ImageBuilderSerializer() : super('ImageBuilder');

  @override
  Iterable<Type> get types => const [ImageBuilder, _$ImageBuilder];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [];
  @override
  ImageBuilder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ImageBuilderBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
