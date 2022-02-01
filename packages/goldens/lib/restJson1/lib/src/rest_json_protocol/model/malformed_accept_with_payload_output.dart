// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_accept_with_payload_output;

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'malformed_accept_with_payload_output.g.dart';

abstract class MalformedAcceptWithPayloadOutput
    with
        _i1.AWSEquatable<MalformedAcceptWithPayloadOutput>
    implements
        Built<MalformedAcceptWithPayloadOutput,
            MalformedAcceptWithPayloadOutputBuilder>,
        _i2.HasPayload<_i3.Uint8List> {
  factory MalformedAcceptWithPayloadOutput(
          [void Function(MalformedAcceptWithPayloadOutputBuilder) updates]) =
      _$MalformedAcceptWithPayloadOutput;

  const MalformedAcceptWithPayloadOutput._();

  factory MalformedAcceptWithPayloadOutput.fromResponse(
          _i3.Uint8List? payload, _i1.AWSStreamedHttpResponse response) =>
      MalformedAcceptWithPayloadOutput((b) {
        b.payload = payload;
      });

  static const List<_i2.SmithySerializer> serializers = [
    _MalformedAcceptWithPayloadOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedAcceptWithPayloadOutputBuilder b) {}
  _i3.Uint8List? get payload;
  @override
  _i3.Uint8List? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedAcceptWithPayloadOutput');
    helper.add('payload', payload);
    return helper.toString();
  }
}

class _MalformedAcceptWithPayloadOutputRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<Object> {
  const _MalformedAcceptWithPayloadOutputRestJson1Serializer()
      : super('MalformedAcceptWithPayloadOutput');

  @override
  Iterable<Type> get types => const [
        MalformedAcceptWithPayloadOutput,
        _$MalformedAcceptWithPayloadOutput
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i3.Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i3.Uint8List)) as _i3.Uint8List);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedAcceptWithPayloadOutput
        ? object.getPayload()
        : (object as _i3.Uint8List?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i3.Uint8List)) as Object);
  }
}