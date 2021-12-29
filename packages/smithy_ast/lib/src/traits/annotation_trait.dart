import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/traits/trait.dart';

/// Trait implementation for traits that are an empty object.
mixin AnnotationTrait on SimpleTrait {}

class AnnotationTraitSerializer<T extends AnnotationTrait>
    extends PrimitiveSerializer<T> {
  AnnotationTraitSerializer(this.builder);

  final T Function() builder;

  @override
  T deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return builder();
  }

  @override
  Object serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified}) {
    return {};
  }

  @override
  Iterable<Type> get types => [T];

  @override
  String get wireName => '$T';
}
