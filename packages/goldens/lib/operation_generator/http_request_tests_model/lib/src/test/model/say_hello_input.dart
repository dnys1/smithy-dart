// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.model.say_hello_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'say_hello_input.g.dart';

abstract class SayHelloInput
    with _i1.HttpInput<SayHelloInputPayload>
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
        return hostLabel.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  SayHelloInputPayload getPayload() =>
      SayHelloInputPayload((b) => b..name = name);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class SayHelloInputPayload
    implements Built<SayHelloInputPayload, SayHelloInputPayloadBuilder> {
  factory SayHelloInputPayload(
          [void Function(SayHelloInputPayloadBuilder) updates]) =
      _$SayHelloInputPayload;

  const SayHelloInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SayHelloInputPayloadBuilder b) {}
  String? get name;
}

class _SayHelloInputAwsJson11Serializer
    extends _i1.SmithySerializer<SayHelloInputPayload> {
  const _SayHelloInputAwsJson11Serializer() : super('SayHelloInput');

  @override
  Iterable<Type> get types => const [
        SayHelloInput,
        _$SayHelloInput,
        SayHelloInputPayload,
        _$SayHelloInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  SayHelloInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SayHelloInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final SayHelloInputPayload payload = object is SayHelloInput
        ? object.getPayload()
        : (object as SayHelloInputPayload);
    final result = <Object?>[];
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(payload.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
