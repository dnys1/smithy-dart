// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.model.say_hello_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'say_hello_input.g.dart';

abstract class SayHelloInput
    with _i1.HttpInput<SayHelloInput>
    implements Built<SayHelloInput, SayHelloInputBuilder> {
  factory SayHelloInput([void Function(SayHelloInputBuilder) updates]) =
      _$SayHelloInput;

  const SayHelloInput._();

  static const List<_i1.SmithySerializer<SayHelloInput>> serializers = [
    _SayHelloInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayHelloInputBuilder b) {}
  String? get greeting;
  String get hostLabel;
  String? get name;
  String? get query;
  @override
  SayHelloInput getPayload() => this;
  @override
  bool get isStreaming => false;
}

class _SayHelloInputAwsJson11Serializer
    extends _i1.SmithySerializer<SayHelloInput> {
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
      final Object? value = iterator.current;
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'hostLabel':
          result.hostLabel = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String);
          break;
        case 'name':
          result.name = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'query':
          result.query = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, SayHelloInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hostLabel',
      serializers.serialize(object.hostLabel,
          specifiedType: const FullType(String))
    ];
    if (object.greeting != null) {
      result
        ..add('greeting')
        ..add(serializers.serialize(object.greeting,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.query != null) {
      result
        ..add('query')
        ..add(serializers.serialize(object.query,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
