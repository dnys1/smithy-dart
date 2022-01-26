// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.operation_with_optional_input_output_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_with_optional_input_output_output.g.dart';

abstract class OperationWithOptionalInputOutputOutput
    with
        _i1.AWSEquatable<OperationWithOptionalInputOutputOutput>
    implements
        Built<OperationWithOptionalInputOutputOutput,
            OperationWithOptionalInputOutputOutputBuilder> {
  factory OperationWithOptionalInputOutputOutput(
      [void Function(OperationWithOptionalInputOutputOutputBuilder)
          updates]) = _$OperationWithOptionalInputOutputOutput;

  const OperationWithOptionalInputOutputOutput._();

  factory OperationWithOptionalInputOutputOutput.fromResponse(
          OperationWithOptionalInputOutputOutput payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _OperationWithOptionalInputOutputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputOutputBuilder b) {}
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper(r'OperationWithOptionalInputOutputOutput');
    helper.add(r'value', value);
    return helper.toString();
  }
}

class _OperationWithOptionalInputOutputOutputAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<OperationWithOptionalInputOutputOutput> {
  const _OperationWithOptionalInputOutputOutputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputOutput');

  @override
  Iterable<Type> get types => const [
        OperationWithOptionalInputOutputOutput,
        _$OperationWithOptionalInputOutputOutput
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
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
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
