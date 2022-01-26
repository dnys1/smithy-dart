// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.model.say_hello_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'say_hello_input.g.dart';

abstract class SayHelloInput
    with _i1.HttpInput<SayHelloInputPayload>, _i2.AWSEquatable<SayHelloInput>
    implements
        Built<SayHelloInput, SayHelloInputBuilder>,
        _i1.HasPayload<SayHelloInputPayload> {
  factory SayHelloInput([void Function(SayHelloInputBuilder) updates]) =
      _$SayHelloInput;

  const SayHelloInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _SayHelloInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayHelloInputBuilder b) {}
  String? get greeting;
  String get hostLabel;
  String? get name;
  String? get query;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'hostLabel':
        return hostLabel;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  SayHelloInputPayload getPayload() => SayHelloInputPayload((b) => b
    ..hostLabel = hostLabel
    ..name = name);
  @override
  List<Object?> get props => [greeting, hostLabel, name, query];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'SayHelloInput');
    helper.add(r'greeting', greeting);
    helper.add(r'hostLabel', hostLabel);
    helper.add(r'name', name);
    helper.add(r'query', query);
    return helper.toString();
  }
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class SayHelloInputPayload
    with _i2.AWSEquatable<SayHelloInputPayload>
    implements Built<SayHelloInputPayload, SayHelloInputPayloadBuilder> {
  factory SayHelloInputPayload(
          [void Function(SayHelloInputPayloadBuilder) updates]) =
      _$SayHelloInputPayload;

  const SayHelloInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayHelloInputPayloadBuilder b) {}
  String get hostLabel;
  String? get name;
  @override
  List<Object?> get props => [hostLabel, name];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'SayHelloInput');
    helper.add(r'hostLabel', hostLabel);
    helper.add(r'name', name);
    return helper.toString();
  }
}

class _SayHelloInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SayHelloInput> {
  const _SayHelloInputAwsJson11Serializer() : super('SayHelloInput');

  @override
  Iterable<Type> get types => const [SayHelloInput, _$SayHelloInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SayHelloInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SayHelloInputBuilder();
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
        case 'hostLabel':
          result.hostLabel = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'query':
          if (value != null) {
            result.query = (serializers.deserialize(value,
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
    final payload = (object as SayHelloInput);
    final result = <Object?>[
      'hostLabel',
      serializers.serialize(payload.hostLabel,
          specifiedType: const FullType(String))
    ];
    if (payload.greeting != null) {
      result
        ..add('greeting')
        ..add(serializers.serialize(payload.greeting,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(payload.name,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.query != null) {
      result
        ..add('query')
        ..add(serializers.serialize(payload.query,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
