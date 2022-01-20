// Generated code. DO NOT MODIFY.

library deprecated.test.model.qux;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'qux.g.dart';

abstract class Qux implements Built<Qux, QuxBuilder> {
  factory Qux([void Function(QuxBuilder) updates]) = _$Qux;

  const Qux._();

  static const List<_i1.SmithySerializer> serializers = [_QuxSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QuxBuilder b) {}
}

class _QuxSerializer extends _i1.SmithySerializer<Qux> {
  const _QuxSerializer() : super('Qux');

  @override
  Iterable<Type> get types => const [Qux, _$Qux];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [];
  @override
  Qux deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return QuxBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
