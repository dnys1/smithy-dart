// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.model.say_goodbye_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'say_goodbye_output.g.dart';

abstract class SayGoodbyeOutput
    implements
        Built<SayGoodbyeOutput, SayGoodbyeOutputBuilder>,
        _i1.HasPayload<SayGoodbyeOutputPayload> {
  factory SayGoodbyeOutput([void Function(SayGoodbyeOutputBuilder) updates]) =
      _$SayGoodbyeOutput;

  const SayGoodbyeOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SayGoodbyeOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeOutputBuilder b) {}
  String? get farewell;
  @override
  SayGoodbyeOutputPayload getPayload() => SayGoodbyeOutputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class SayGoodbyeOutputPayload
    implements Built<SayGoodbyeOutputPayload, SayGoodbyeOutputPayloadBuilder> {
  factory SayGoodbyeOutputPayload(
          [void Function(SayGoodbyeOutputPayloadBuilder) updates]) =
      _$SayGoodbyeOutputPayload;

  const SayGoodbyeOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeOutputPayloadBuilder b) {}
}

class _SayGoodbyeOutputAwsJson11Serializer
    extends _i1.SmithySerializer<SayGoodbyeOutputPayload> {
  const _SayGoodbyeOutputAwsJson11Serializer() : super('SayGoodbyeOutput');

  @override
  Iterable<Type> get types => const [
        SayGoodbyeOutput,
        _$SayGoodbyeOutput,
        SayGoodbyeOutputPayload,
        _$SayGoodbyeOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SayGoodbyeOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return SayGoodbyeOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
