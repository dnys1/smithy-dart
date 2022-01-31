// Generated code. DO NOT MODIFY.

library operation_generator.hello_service.model.say_goodbye_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'say_goodbye_output.g.dart';

abstract class SayGoodbyeOutput
    with _i1.AWSEquatable<SayGoodbyeOutput>
    implements
        Built<SayGoodbyeOutput, SayGoodbyeOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<SayGoodbyeOutputPayload> {
  factory SayGoodbyeOutput([void Function(SayGoodbyeOutputBuilder) updates]) =
      _$SayGoodbyeOutput;

  const SayGoodbyeOutput._();

  factory SayGoodbyeOutput.fromResponse(SayGoodbyeOutputPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      SayGoodbyeOutput((b) {
        if (response.headers['X-Farewell'] != null) {
          b.farewell = response.headers['X-Farewell']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    _SayGoodbyeOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeOutputBuilder b) {}
  String? get farewell;
  @override
  SayGoodbyeOutputPayload getPayload() => SayGoodbyeOutputPayload();
  @override
  List<Object?> get props => [farewell];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SayGoodbyeOutput');
    helper.add('farewell', farewell);
    return helper.toString();
  }
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class SayGoodbyeOutputPayload
    with _i1.AWSEquatable<SayGoodbyeOutputPayload>
    implements
        Built<SayGoodbyeOutputPayload, SayGoodbyeOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory SayGoodbyeOutputPayload(
          [void Function(SayGoodbyeOutputPayloadBuilder) updates]) =
      _$SayGoodbyeOutputPayload;

  const SayGoodbyeOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayGoodbyeOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SayGoodbyeOutputPayload');
    return helper.toString();
  }
}

class _SayGoodbyeOutputAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SayGoodbyeOutput> {
  const _SayGoodbyeOutputAwsJson11Serializer() : super('SayGoodbyeOutput');

  @override
  Iterable<Type> get types => const [SayGoodbyeOutput, _$SayGoodbyeOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SayGoodbyeOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SayGoodbyeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'farewell':
          if (value != null) {
            result.farewell = (serializers.deserialize(value,
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
    final payload = (object as SayGoodbyeOutput);
    final result = <Object?>[];
    if (payload.farewell != null) {
      result
        ..add('farewell')
        ..add(serializers.serialize(payload.farewell!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
