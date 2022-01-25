// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_content_type_with_generic_string_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_content_type_with_generic_string_input.g.dart';

abstract class MalformedContentTypeWithGenericStringInput
    with
        _i1.HttpInput<String>,
        _i2.AWSEquatable<MalformedContentTypeWithGenericStringInput>
    implements
        Built<MalformedContentTypeWithGenericStringInput,
            MalformedContentTypeWithGenericStringInputBuilder>,
        _i1.HasPayload<String> {
  factory MalformedContentTypeWithGenericStringInput(
      [void Function(MalformedContentTypeWithGenericStringInputBuilder)
          updates]) = _$MalformedContentTypeWithGenericStringInput;

  const MalformedContentTypeWithGenericStringInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedContentTypeWithGenericStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedContentTypeWithGenericStringInputBuilder b) {}
  String? get payload;
  @override
  String? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
}

class _MalformedContentTypeWithGenericStringInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _MalformedContentTypeWithGenericStringInputRestJson1Serializer()
      : super('MalformedContentTypeWithGenericStringInput');

  @override
  Iterable<Type> get types => const [
        MalformedContentTypeWithGenericStringInput,
        _$MalformedContentTypeWithGenericStringInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  String deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(String)) as String);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedContentTypeWithGenericStringInput
        ? object.getPayload()
        : (object as String?);
    return (serializers.serialize(payload,
        specifiedType: const FullType(String)) as Object);
  }
}