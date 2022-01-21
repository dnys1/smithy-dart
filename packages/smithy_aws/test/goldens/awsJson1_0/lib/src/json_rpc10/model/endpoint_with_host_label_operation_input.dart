// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.endpoint_with_host_label_operation_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'endpoint_with_host_label_operation_input.g.dart';

abstract class EndpointWithHostLabelOperationInput
    with
        _i1.HttpInput<EndpointWithHostLabelOperationInputPayload>
    implements
        Built<EndpointWithHostLabelOperationInput,
            EndpointWithHostLabelOperationInputBuilder>,
        _i1.HasPayload<EndpointWithHostLabelOperationInputPayload> {
  factory EndpointWithHostLabelOperationInput(
          [void Function(EndpointWithHostLabelOperationInputBuilder) updates]) =
      _$EndpointWithHostLabelOperationInput;

  const EndpointWithHostLabelOperationInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _EndpointWithHostLabelOperationInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointWithHostLabelOperationInputBuilder b) {}
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
  EndpointWithHostLabelOperationInputPayload getPayload() =>
      EndpointWithHostLabelOperationInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class EndpointWithHostLabelOperationInputPayload
    implements
        Built<EndpointWithHostLabelOperationInputPayload,
            EndpointWithHostLabelOperationInputPayloadBuilder> {
  factory EndpointWithHostLabelOperationInputPayload(
      [void Function(EndpointWithHostLabelOperationInputPayloadBuilder)
          updates]) = _$EndpointWithHostLabelOperationInputPayload;

  const EndpointWithHostLabelOperationInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointWithHostLabelOperationInputPayloadBuilder b) {}
}

class _EndpointWithHostLabelOperationInputAwsJson10Serializer extends _i1
    .StructuredSmithySerializer<EndpointWithHostLabelOperationInput> {
  const _EndpointWithHostLabelOperationInputAwsJson10Serializer()
      : super('EndpointWithHostLabelOperationInput');

  @override
  Iterable<Type> get types => const [
        EndpointWithHostLabelOperationInput,
        _$EndpointWithHostLabelOperationInput,
        EndpointWithHostLabelOperationInputPayload,
        _$EndpointWithHostLabelOperationInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  EndpointWithHostLabelOperationInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EndpointWithHostLabelOperationInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as EndpointWithHostLabelOperationInput);
    final result = <Object?>[
      'label',
      serializers.serialize(payload.label,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
