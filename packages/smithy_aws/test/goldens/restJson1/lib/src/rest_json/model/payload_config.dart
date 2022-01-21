// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.payload_config;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'payload_config.g.dart';

abstract class PayloadConfig
    implements Built<PayloadConfig, PayloadConfigBuilder> {
  factory PayloadConfig([void Function(PayloadConfigBuilder) updates]) =
      _$PayloadConfig;

  const PayloadConfig._();

  static const List<_i1.SmithySerializer> serializers = [
    _PayloadConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PayloadConfigBuilder b) {}
  int? get data;
}

class _PayloadConfigRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PayloadConfig> {
  const _PayloadConfigRestJson1Serializer() : super('PayloadConfig');

  @override
  Iterable<Type> get types => const [PayloadConfig, _$PayloadConfig];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PayloadConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PayloadConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'data':
          if (value != null) {
            result.data = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as PayloadConfig);
    final result = <Object?>[];
    if (payload.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(payload.data,
            specifiedType: const FullType.nullable(int)));
    }
    return result;
  }
}
