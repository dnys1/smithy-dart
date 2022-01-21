// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.struct_with_json_name;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'struct_with_json_name.g.dart';

abstract class StructWithJsonName
    implements Built<StructWithJsonName, StructWithJsonNameBuilder> {
  factory StructWithJsonName(
          [void Function(StructWithJsonNameBuilder) updates]) =
      _$StructWithJsonName;

  const StructWithJsonName._();

  static const List<_i1.SmithySerializer> serializers = [
    _StructWithJsonNameAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructWithJsonNameBuilder b) {}
  String? get value;
}

class _StructWithJsonNameAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<StructWithJsonName> {
  const _StructWithJsonNameAwsJson11Serializer() : super('StructWithJsonName');

  @override
  Iterable<Type> get types => const [StructWithJsonName, _$StructWithJsonName];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  StructWithJsonName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = StructWithJsonNameBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as StructWithJsonName);
    final result = <Object?>[];
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(payload.value,
            specifiedType: FullType.nullable(String)));
    }
    return result;
  }
}
