// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.empty_struct;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'empty_struct.g.dart';

abstract class EmptyStruct
    implements Built<EmptyStruct, EmptyStructBuilder>, _i1.EmptyPayload {
  factory EmptyStruct([void Function(EmptyStructBuilder) updates]) =
      _$EmptyStruct;

  const EmptyStruct._();

  static const List<_i1.SmithySerializer> serializers = [
    _EmptyStructAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyStructBuilder b) {}
}

class _EmptyStructAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<EmptyStruct> {
  const _EmptyStructAwsJson11Serializer() : super('EmptyStruct');

  @override
  Iterable<Type> get types => const [EmptyStruct, _$EmptyStruct];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  EmptyStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EmptyStructBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
