// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.greeting_with_errors_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_with_errors_output.g.dart';

abstract class GreetingWithErrorsOutput
    with _i1.AWSEquatable<GreetingWithErrorsOutput>
    implements
        Built<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder> {
  factory GreetingWithErrorsOutput({String? greeting}) {
    return _$GreetingWithErrorsOutput._(greeting: greeting);
  }

  const GreetingWithErrorsOutput._();

  factory GreetingWithErrorsOutput.fromResponse(
          GreetingWithErrorsOutput payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _GreetingWithErrorsOutputAwsJson11Serializer()
  ];

  String? get greeting;
  @override
  List<Object?> get props => [greeting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingWithErrorsOutput');
    helper.add('greeting', greeting);
    return helper.toString();
  }
}

class _GreetingWithErrorsOutputAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const _GreetingWithErrorsOutputAwsJson11Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types =>
      const [GreetingWithErrorsOutput, _$GreetingWithErrorsOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
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
        ..add(serializers.serialize(payload.greeting!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
