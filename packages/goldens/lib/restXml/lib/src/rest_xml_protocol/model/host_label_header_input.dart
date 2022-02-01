// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.host_label_header_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'host_label_header_input.g.dart';

abstract class HostLabelHeaderInput
    with
        _i1.HttpInput<HostLabelHeaderInputPayload>,
        _i2.AWSEquatable<HostLabelHeaderInput>
    implements
        Built<HostLabelHeaderInput, HostLabelHeaderInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HostLabelHeaderInputPayload> {
  factory HostLabelHeaderInput(
          [void Function(HostLabelHeaderInputBuilder) updates]) =
      _$HostLabelHeaderInput;

  const HostLabelHeaderInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HostLabelHeaderInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelHeaderInputBuilder b) {}
  String get accountId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'accountId':
        return accountId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  HostLabelHeaderInputPayload getPayload() => HostLabelHeaderInputPayload();
  @override
  List<Object?> get props => [accountId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostLabelHeaderInput');
    helper.add('accountId', accountId);
    return helper.toString();
  }
}

@_i3.internal
abstract class HostLabelHeaderInputPayload
    with _i2.AWSEquatable<HostLabelHeaderInputPayload>
    implements
        Built<HostLabelHeaderInputPayload, HostLabelHeaderInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HostLabelHeaderInputPayload(
          [void Function(HostLabelHeaderInputPayloadBuilder) updates]) =
      _$HostLabelHeaderInputPayload;

  const HostLabelHeaderInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelHeaderInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostLabelHeaderInputPayload');
    return helper.toString();
  }
}

class _HostLabelHeaderInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<HostLabelHeaderInputPayload> {
  const _HostLabelHeaderInputRestXmlSerializer()
      : super('HostLabelHeaderInput');

  @override
  Iterable<Type> get types => const [
        HostLabelHeaderInput,
        _$HostLabelHeaderInput,
        HostLabelHeaderInputPayload,
        _$HostLabelHeaderInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  HostLabelHeaderInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HostLabelHeaderInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[_i1.XmlElementName('HostLabelHeaderInput')];
    return result;
  }
}