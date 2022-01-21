// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.operation_with_optional_input_output_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'operation_with_optional_input_output_input.g.dart';

abstract class OperationWithOptionalInputOutputInput
    with
        _i1.HttpInput<OperationWithOptionalInputOutputInputPayload>
    implements
        Built<OperationWithOptionalInputOutputInput,
            OperationWithOptionalInputOutputInputBuilder>,
        _i1.HasPayload<OperationWithOptionalInputOutputInputPayload> {
  factory OperationWithOptionalInputOutputInput(
      [void Function(OperationWithOptionalInputOutputInputBuilder)
          updates]) = _$OperationWithOptionalInputOutputInput;

  const OperationWithOptionalInputOutputInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _OperationWithOptionalInputOutputInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputInputBuilder b) {}
  String? get value;
  @override
  OperationWithOptionalInputOutputInputPayload getPayload() =>
      OperationWithOptionalInputOutputInputPayload((b) => b..value = value);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class OperationWithOptionalInputOutputInputPayload
    implements
        Built<OperationWithOptionalInputOutputInputPayload,
            OperationWithOptionalInputOutputInputPayloadBuilder> {
  factory OperationWithOptionalInputOutputInputPayload(
      [void Function(OperationWithOptionalInputOutputInputPayloadBuilder)
          updates]) = _$OperationWithOptionalInputOutputInputPayload;

  const OperationWithOptionalInputOutputInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputInputPayloadBuilder b) {}
  String? get value;
}

class _OperationWithOptionalInputOutputInputAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<OperationWithOptionalInputOutputInput> {
  const _OperationWithOptionalInputOutputInputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputInput');

  @override
  Iterable<Type> get types => const [
        OperationWithOptionalInputOutputInput,
        _$OperationWithOptionalInputOutputInput,
        OperationWithOptionalInputOutputInputPayload,
        _$OperationWithOptionalInputOutputInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  OperationWithOptionalInputOutputInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = OperationWithOptionalInputOutputInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Value':
          result.value = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as OperationWithOptionalInputOutputInput);
    final result = <Object?>[];
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(payload.value,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}