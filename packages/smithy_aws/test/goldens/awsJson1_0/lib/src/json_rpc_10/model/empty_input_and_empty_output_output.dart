// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.model.empty_input_and_empty_output_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'empty_input_and_empty_output_output.g.dart';

abstract class EmptyInputAndEmptyOutputOutput
    with
        _i1.AWSEquatable<EmptyInputAndEmptyOutputOutput>
    implements
        Built<EmptyInputAndEmptyOutputOutput,
            EmptyInputAndEmptyOutputOutputBuilder>,
        _i2.EmptyPayload {
  factory EmptyInputAndEmptyOutputOutput(
          [void Function(EmptyInputAndEmptyOutputOutputBuilder) updates]) =
      _$EmptyInputAndEmptyOutputOutput;

  const EmptyInputAndEmptyOutputOutput._();

  factory EmptyInputAndEmptyOutputOutput.fromResponse(
          EmptyInputAndEmptyOutputOutput payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _EmptyInputAndEmptyOutputOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmptyInputAndEmptyOutputOutputBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _EmptyInputAndEmptyOutputOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<EmptyInputAndEmptyOutputOutput> {
  const _EmptyInputAndEmptyOutputOutputAwsJson10Serializer()
      : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types =>
      const [EmptyInputAndEmptyOutputOutput, _$EmptyInputAndEmptyOutputOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  EmptyInputAndEmptyOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return EmptyInputAndEmptyOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
