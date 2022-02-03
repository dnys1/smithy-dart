// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.no_input_and_output_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_input_and_output_output.g.dart';

abstract class NoInputAndOutputOutput
    with _i1.AWSEquatable<NoInputAndOutputOutput>
    implements
        Built<NoInputAndOutputOutput, NoInputAndOutputOutputBuilder>,
        _i2.EmptyPayload {
  factory NoInputAndOutputOutput(
          [void Function(NoInputAndOutputOutputBuilder) updates]) =
      _$NoInputAndOutputOutput;

  const NoInputAndOutputOutput._();

  factory NoInputAndOutputOutput.fromResponse(NoInputAndOutputOutput payload,
          _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _NoInputAndOutputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoInputAndOutputOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoInputAndOutputOutput');
    return helper.toString();
  }
}

class _NoInputAndOutputOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<NoInputAndOutputOutput> {
  const _NoInputAndOutputOutputRestJson1Serializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types =>
      const [NoInputAndOutputOutput, _$NoInputAndOutputOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  NoInputAndOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return NoInputAndOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
