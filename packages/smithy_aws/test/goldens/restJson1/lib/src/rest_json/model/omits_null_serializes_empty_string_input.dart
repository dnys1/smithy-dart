// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.omits_null_serializes_empty_string_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'omits_null_serializes_empty_string_input.g.dart';

abstract class OmitsNullSerializesEmptyStringInput
    with
        _i1.HttpInput<OmitsNullSerializesEmptyStringInputPayload>
    implements
        Built<OmitsNullSerializesEmptyStringInput,
            OmitsNullSerializesEmptyStringInputBuilder>,
        _i1.EmptyPayload {
  factory OmitsNullSerializesEmptyStringInput(
          [void Function(OmitsNullSerializesEmptyStringInputBuilder) updates]) =
      _$OmitsNullSerializesEmptyStringInput;

  const OmitsNullSerializesEmptyStringInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _OmitsNullSerializesEmptyStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OmitsNullSerializesEmptyStringInputBuilder b) {}
  String? get emptyString;
  String? get nullValue;
  OmitsNullSerializesEmptyStringInputPayload getPayload() =>
      OmitsNullSerializesEmptyStringInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class OmitsNullSerializesEmptyStringInputPayload
    implements
        Built<OmitsNullSerializesEmptyStringInputPayload,
            OmitsNullSerializesEmptyStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory OmitsNullSerializesEmptyStringInputPayload(
      [void Function(OmitsNullSerializesEmptyStringInputPayloadBuilder)
          updates]) = _$OmitsNullSerializesEmptyStringInputPayload;

  const OmitsNullSerializesEmptyStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OmitsNullSerializesEmptyStringInputPayloadBuilder b) {}
}

class _OmitsNullSerializesEmptyStringInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<OmitsNullSerializesEmptyStringInputPayload> {
  const _OmitsNullSerializesEmptyStringInputRestJson1Serializer()
      : super('OmitsNullSerializesEmptyStringInput');

  @override
  Iterable<Type> get types => const [
        OmitsNullSerializesEmptyStringInput,
        _$OmitsNullSerializesEmptyStringInput,
        OmitsNullSerializesEmptyStringInputPayload,
        _$OmitsNullSerializesEmptyStringInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  OmitsNullSerializesEmptyStringInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return OmitsNullSerializesEmptyStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
