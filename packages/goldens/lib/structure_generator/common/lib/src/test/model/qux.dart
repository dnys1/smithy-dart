// Generated code. DO NOT MODIFY.

library common.test.model.qux;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'qux.g.dart';

abstract class Qux
    with _i1.AWSEquatable<Qux>
    implements Built<Qux, QuxBuilder>, _i2.EmptyPayload {
  factory Qux([void Function(QuxBuilder) updates]) = _$Qux;

  const Qux._();

  static const List<_i2.SmithySerializer> serializers = [_QuxSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QuxBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'Qux');
    return helper.toString();
  }
}

class _QuxSerializer extends _i2.StructuredSmithySerializer<Qux> {
  const _QuxSerializer() : super('Qux');

  @override
  Iterable<Type> get types => const [Qux, _$Qux];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [];
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
