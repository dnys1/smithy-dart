// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_accept_with_generic_string_input;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_accept_with_generic_string_input.g.dart';

abstract class MalformedAcceptWithGenericStringInput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<MalformedAcceptWithGenericStringInput>
    implements
        Built<MalformedAcceptWithGenericStringInput,
            MalformedAcceptWithGenericStringInputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory MalformedAcceptWithGenericStringInput(
      [void Function(MalformedAcceptWithGenericStringInputBuilder)
          updates]) = _$MalformedAcceptWithGenericStringInput;

  const MalformedAcceptWithGenericStringInput._();

  factory MalformedAcceptWithGenericStringInput.fromRequest(
          _i2.Uint8List? payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      MalformedAcceptWithGenericStringInput((b) {
        b.payload = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedAcceptWithGenericStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedAcceptWithGenericStringInputBuilder b) {}
  _i2.Uint8List? get payload;
  @override
  _i2.Uint8List? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedAcceptWithGenericStringInput');
    helper.add('payload', payload);
    return helper.toString();
  }
}

class _MalformedAcceptWithGenericStringInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _MalformedAcceptWithGenericStringInputRestJson1Serializer()
      : super('MalformedAcceptWithGenericStringInput');

  @override
  Iterable<Type> get types => const [
        MalformedAcceptWithGenericStringInput,
        _$MalformedAcceptWithGenericStringInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedAcceptWithGenericStringInput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.Uint8List)) as Object);
  }
}
