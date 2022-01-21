// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.host_label_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'host_label_input.g.dart';

abstract class HostLabelInput
    with _i1.HttpInput<HostLabelInputPayload>
    implements
        Built<HostLabelInput, HostLabelInputBuilder>,
        _i1.HasPayload<HostLabelInputPayload> {
  factory HostLabelInput([void Function(HostLabelInputBuilder) updates]) =
      _$HostLabelInput;

  const HostLabelInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HostLabelInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelInputBuilder b) {}
  String get label;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'label':
        return label.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  HostLabelInputPayload getPayload() => HostLabelInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HostLabelInputPayload
    implements Built<HostLabelInputPayload, HostLabelInputPayloadBuilder> {
  factory HostLabelInputPayload(
          [void Function(HostLabelInputPayloadBuilder) updates]) =
      _$HostLabelInputPayload;

  const HostLabelInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelInputPayloadBuilder b) {}
}

class _HostLabelInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HostLabelInputPayload> {
  const _HostLabelInputRestJson1Serializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [
        HostLabelInput,
        _$HostLabelInput,
        HostLabelInputPayload,
        _$HostLabelInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HostLabelInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HostLabelInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
