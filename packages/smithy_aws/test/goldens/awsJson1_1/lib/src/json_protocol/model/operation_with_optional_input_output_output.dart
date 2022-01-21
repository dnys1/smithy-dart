// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.operation_with_optional_input_output_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'operation_with_optional_input_output_output.g.dart';

abstract class OperationWithOptionalInputOutputOutput
    implements
        Built<OperationWithOptionalInputOutputOutput,
            OperationWithOptionalInputOutputOutputBuilder>,
        _i1.HasPayload<OperationWithOptionalInputOutputOutputPayload> {
  factory OperationWithOptionalInputOutputOutput(
      [void Function(OperationWithOptionalInputOutputOutputBuilder)
          updates]) = _$OperationWithOptionalInputOutputOutput;

  const OperationWithOptionalInputOutputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _OperationWithOptionalInputOutputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputOutputBuilder b) {}
  String? get value;
  @override
  OperationWithOptionalInputOutputOutputPayload getPayload() =>
      OperationWithOptionalInputOutputOutputPayload((b) => b..value = value);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class OperationWithOptionalInputOutputOutputPayload
    implements
        Built<OperationWithOptionalInputOutputOutputPayload,
            OperationWithOptionalInputOutputOutputPayloadBuilder> {
  factory OperationWithOptionalInputOutputOutputPayload(
      [void Function(OperationWithOptionalInputOutputOutputPayloadBuilder)
          updates]) = _$OperationWithOptionalInputOutputOutputPayload;

  const OperationWithOptionalInputOutputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputOutputPayloadBuilder b) {}
  String? get value;
}

class _OperationWithOptionalInputOutputOutputAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<OperationWithOptionalInputOutputOutput> {
  const _OperationWithOptionalInputOutputOutputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputOutput');

  @override
  Iterable<Type> get types => const [
        OperationWithOptionalInputOutputOutput,
        _$OperationWithOptionalInputOutputOutput,
        OperationWithOptionalInputOutputOutputPayload,
        _$OperationWithOptionalInputOutputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  OperationWithOptionalInputOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = OperationWithOptionalInputOutputOutputBuilder();
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
    final payload = (object as OperationWithOptionalInputOutputOutput);
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
