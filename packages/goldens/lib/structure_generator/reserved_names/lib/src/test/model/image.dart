// Generated code. DO NOT MODIFY.

library reserved_names.test.model.image;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'image.g.dart';

abstract class Image$
    with _i1.AWSEquatable<Image$>
    implements Built<Image$, Image$Builder>, _i2.EmptyPayload {
  factory Image$([void Function(Image$Builder) updates]) = _$Image$;

  const Image$._();

  static const List<_i2.SmithySerializer> serializers = [_ImageSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Image$Builder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'Image$');
    return helper.toString();
  }
}

class _ImageSerializer extends _i2.StructuredSmithySerializer<Image$> {
  const _ImageSerializer() : super('Image');

  @override
  Iterable<Type> get types => const [Image$, _$Image$];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [];
  @override
  Image$ deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return Image$Builder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
