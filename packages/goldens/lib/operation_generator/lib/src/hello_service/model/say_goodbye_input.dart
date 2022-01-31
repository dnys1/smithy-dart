// Generated code. DO NOT MODIFY.

library operation_generator.hello_service.model.say_goodbye_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'say_goodbye_input.g.dart';

abstract class SayGoodbyeInput
    with _i1.HttpInput<SayGoodbyeInput>, _i2.AWSEquatable<SayGoodbyeInput>
    implements
        Built<SayGoodbyeInput, SayGoodbyeInputBuilder>,
        _i1.EmptyPayload {
  factory SayGoodbyeInput([void Function(SayGoodbyeInputBuilder) updates]) =
      _$SayGoodbyeInput;

  const SayGoodbyeInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SayGoodbyeInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeInputBuilder b) {}
  @override
  SayGoodbyeInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SayGoodbyeInput');
    return helper.toString();
  }
}

class _SayGoodbyeInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SayGoodbyeInput> {
  const _SayGoodbyeInputAwsJson11Serializer() : super('SayGoodbyeInput');

  @override
  Iterable<Type> get types => const [SayGoodbyeInput, _$SayGoodbyeInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SayGoodbyeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return SayGoodbyeInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
