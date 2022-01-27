// Generated code. DO NOT MODIFY.

library reserved_names.test.model.type;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'type.g.dart';

abstract class Type$
    with _i1.AWSEquatable<Type$>
    implements Built<Type$, Type$Builder>, _i2.EmptyPayload {
  factory Type$([void Function(Type$Builder) updates]) = _$Type$;

  const Type$._();

  static const List<_i2.SmithySerializer> serializers = [_TypeSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Type$Builder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'Type$');
    return helper.toString();
  }
}

class _TypeSerializer extends _i2.StructuredSmithySerializer<Type$> {
  const _TypeSerializer() : super('Type');

  @override
  Iterable<Type> get types => const [Type$, _$Type$];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [];
  @override
  Type$ deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return Type$Builder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
