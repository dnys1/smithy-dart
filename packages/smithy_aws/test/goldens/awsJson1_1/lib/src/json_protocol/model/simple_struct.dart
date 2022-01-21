// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.simple_struct;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'simple_struct.g.dart';

abstract class SimpleStruct
    implements Built<SimpleStruct, SimpleStructBuilder> {
  factory SimpleStruct([void Function(SimpleStructBuilder) updates]) =
      _$SimpleStruct;

  const SimpleStruct._();

  static const List<_i1.SmithySerializer> serializers = [
    _SimpleStructAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleStructBuilder b) {}
  String? get value;
}

class _SimpleStructAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SimpleStruct> {
  const _SimpleStructAwsJson11Serializer() : super('SimpleStruct');

  @override
  Iterable<Type> get types => const [SimpleStruct, _$SimpleStruct];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SimpleStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SimpleStructBuilder();
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
    final payload = (object as SimpleStruct);
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
