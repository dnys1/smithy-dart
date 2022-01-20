// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.no_input_and_output_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'no_input_and_output_output.g.dart';

abstract class NoInputAndOutputOutput
    implements
        Built<NoInputAndOutputOutput, NoInputAndOutputOutputBuilder>,
        _i1.HasPayload<NoInputAndOutputOutputPayload> {
  factory NoInputAndOutputOutput(
          [void Function(NoInputAndOutputOutputBuilder) updates]) =
      _$NoInputAndOutputOutput;

  const NoInputAndOutputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _NoInputAndOutputOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoInputAndOutputOutputBuilder b) {}
  @override
  NoInputAndOutputOutputPayload getPayload() => NoInputAndOutputOutputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class NoInputAndOutputOutputPayload
    implements
        Built<NoInputAndOutputOutputPayload,
            NoInputAndOutputOutputPayloadBuilder> {
  factory NoInputAndOutputOutputPayload(
          [void Function(NoInputAndOutputOutputPayloadBuilder) updates]) =
      _$NoInputAndOutputOutputPayload;

  const NoInputAndOutputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoInputAndOutputOutputPayloadBuilder b) {}
}

class _NoInputAndOutputOutputAwsJson10Serializer
    extends _i1.SmithySerializer<NoInputAndOutputOutput> {
  const _NoInputAndOutputOutputAwsJson10Serializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [
        NoInputAndOutputOutput,
        _$NoInputAndOutputOutput,
        NoInputAndOutputOutputPayload,
        _$NoInputAndOutputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
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
