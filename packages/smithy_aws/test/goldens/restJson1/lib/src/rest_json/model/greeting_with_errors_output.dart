// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.greeting_with_errors_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_with_errors_output.g.dart';

abstract class GreetingWithErrorsOutput
    implements
        Built<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder>,
        _i1.HasPayload<GreetingWithErrorsOutputPayload> {
  factory GreetingWithErrorsOutput(
          [void Function(GreetingWithErrorsOutputBuilder) updates]) =
      _$GreetingWithErrorsOutput;

  const GreetingWithErrorsOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _GreetingWithErrorsOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputBuilder b) {}
  String? get greeting;
  @override
  GreetingWithErrorsOutputPayload getPayload() =>
      GreetingWithErrorsOutputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class GreetingWithErrorsOutputPayload
    implements
        Built<GreetingWithErrorsOutputPayload,
            GreetingWithErrorsOutputPayloadBuilder> {
  factory GreetingWithErrorsOutputPayload(
          [void Function(GreetingWithErrorsOutputPayloadBuilder) updates]) =
      _$GreetingWithErrorsOutputPayload;

  const GreetingWithErrorsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputPayloadBuilder b) {}
}

class _GreetingWithErrorsOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GreetingWithErrorsOutputPayload> {
  const _GreetingWithErrorsOutputRestJson1Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [
        GreetingWithErrorsOutput,
        _$GreetingWithErrorsOutput,
        GreetingWithErrorsOutputPayload,
        _$GreetingWithErrorsOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  GreetingWithErrorsOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GreetingWithErrorsOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
