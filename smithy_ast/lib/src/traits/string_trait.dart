import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/traits/trait.dart';

abstract class StringTrait implements Trait {
  @override
  String get value;
}

class StringTraitSerializer<T extends StringTrait>
    extends PrimitiveSerializer<T> {
  StringTraitSerializer(this.builder);

  final T Function(String) builder;

  @override
  T deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return builder(serialized as String);
  }

  @override
  String serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.value;
  }

  @override
  Iterable<Type> get types => [T];

  @override
  String get wireName => '$T';
}
