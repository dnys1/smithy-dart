// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.model.say_goodbye_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'say_goodbye_input.g.dart';

abstract class SayGoodbyeInput
    with _i1.HttpInput<SayGoodbyeInputPayload>
    implements
        Built<SayGoodbyeInput, SayGoodbyeInputBuilder>,
        _i1.HasPayload<SayGoodbyeInputPayload> {
  factory SayGoodbyeInput([void Function(SayGoodbyeInputBuilder) updates]) =
      _$SayGoodbyeInput;

  const SayGoodbyeInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SayGoodbyeInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeInputBuilder b) {}
  @override
  SayGoodbyeInputPayload getPayload() => SayGoodbyeInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class SayGoodbyeInputPayload
    implements Built<SayGoodbyeInputPayload, SayGoodbyeInputPayloadBuilder> {
  factory SayGoodbyeInputPayload(
          [void Function(SayGoodbyeInputPayloadBuilder) updates]) =
      _$SayGoodbyeInputPayload;

  const SayGoodbyeInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeInputPayloadBuilder b) {}
}

class _SayGoodbyeInputAwsJson11Serializer
    extends _i1.SmithySerializer<SayGoodbyeInputPayload> {
  const _SayGoodbyeInputAwsJson11Serializer() : super('SayGoodbyeInput');

  @override
  Iterable<Type> get types => const [SayGoodbyeInput, _$SayGoodbyeInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SayGoodbyeInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return SayGoodbyeInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
