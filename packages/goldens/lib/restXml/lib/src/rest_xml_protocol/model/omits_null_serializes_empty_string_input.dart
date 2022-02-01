// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.omits_null_serializes_empty_string_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'omits_null_serializes_empty_string_input.g.dart';

abstract class OmitsNullSerializesEmptyStringInput
    with
        _i1.HttpInput<OmitsNullSerializesEmptyStringInputPayload>,
        _i2.AWSEquatable<OmitsNullSerializesEmptyStringInput>
    implements
        Built<OmitsNullSerializesEmptyStringInput,
            OmitsNullSerializesEmptyStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<OmitsNullSerializesEmptyStringInputPayload> {
  factory OmitsNullSerializesEmptyStringInput(
          [void Function(OmitsNullSerializesEmptyStringInputBuilder) updates]) =
      _$OmitsNullSerializesEmptyStringInput;

  const OmitsNullSerializesEmptyStringInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _OmitsNullSerializesEmptyStringInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OmitsNullSerializesEmptyStringInputBuilder b) {}
  String? get emptyString;
  String? get nullValue;
  @override
  OmitsNullSerializesEmptyStringInputPayload getPayload() =>
      OmitsNullSerializesEmptyStringInputPayload();
  @override
  List<Object?> get props => [emptyString, nullValue];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OmitsNullSerializesEmptyStringInput');
    helper.add('emptyString', emptyString);
    helper.add('nullValue', nullValue);
    return helper.toString();
  }
}

@_i3.internal
abstract class OmitsNullSerializesEmptyStringInputPayload
    with
        _i2.AWSEquatable<OmitsNullSerializesEmptyStringInputPayload>
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
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'OmitsNullSerializesEmptyStringInputPayload');
    return helper.toString();
  }
}

class _OmitsNullSerializesEmptyStringInputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<OmitsNullSerializesEmptyStringInputPayload> {
  const _OmitsNullSerializesEmptyStringInputRestXmlSerializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  OmitsNullSerializesEmptyStringInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return OmitsNullSerializesEmptyStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      _i1.XmlElementName('OmitsNullSerializesEmptyStringInput')
    ];
    return result;
  }
}
