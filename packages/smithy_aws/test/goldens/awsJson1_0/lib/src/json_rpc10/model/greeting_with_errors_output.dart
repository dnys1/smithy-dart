// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.greeting_with_errors_output;

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
    _GreetingWithErrorsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputBuilder b) {}
  String? get greeting;
  @override
  GreetingWithErrorsOutputPayload getPayload() =>
      GreetingWithErrorsOutputPayload((b) => b..greeting = greeting);
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
  String? get greeting;
}

class _GreetingWithErrorsOutputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const _GreetingWithErrorsOutputAwsJson10Serializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  GreetingWithErrorsOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(value,
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
    final payload = (object as GreetingWithErrorsOutput);
    final result = <Object?>[];
    if (payload.greeting != null) {
      result
        ..add('greeting')
        ..add(serializers.serialize(payload.greeting,
            specifiedType: FullType.nullable(String)));
    }
    return result;
  }
}
