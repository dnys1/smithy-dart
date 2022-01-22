// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.host_label_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'host_label_input.g.dart';

abstract class HostLabelInput
    with _i1.HttpInput<HostLabelInput>
    implements Built<HostLabelInput, HostLabelInputBuilder> {
  factory HostLabelInput([void Function(HostLabelInputBuilder) updates]) =
      _$HostLabelInput;

  const HostLabelInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HostLabelInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelInputBuilder b) {}
  String get label;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'label':
        return label;
    }
    throw _i1.MissingLabelException(this, key);
  }
}

class _HostLabelInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<HostLabelInput> {
  const _HostLabelInputAwsJson11Serializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [HostLabelInput, _$HostLabelInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  HostLabelInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = HostLabelInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as HostLabelInput);
    final result = <Object?>[
      'label',
      serializers.serialize(payload.label,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
