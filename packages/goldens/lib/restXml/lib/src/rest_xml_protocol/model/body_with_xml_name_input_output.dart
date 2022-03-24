// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.body_with_xml_name_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'body_with_xml_name_input_output.g.dart';

abstract class BodyWithXmlNameInputOutput
    with
        _i1.HttpInput<BodyWithXmlNameInputOutput>,
        _i2.AWSEquatable<BodyWithXmlNameInputOutput>
    implements
        Built<BodyWithXmlNameInputOutput, BodyWithXmlNameInputOutputBuilder> {
  factory BodyWithXmlNameInputOutput({_i3.PayloadWithXmlName? nested}) {
    return _$BodyWithXmlNameInputOutput._(nested: nested);
  }

  const BodyWithXmlNameInputOutput._();

  factory BodyWithXmlNameInputOutput.fromRequest(
          BodyWithXmlNameInputOutput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  factory BodyWithXmlNameInputOutput.fromResponse(
          BodyWithXmlNameInputOutput payload,
          _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _BodyWithXmlNameInputOutputRestXmlSerializer()
  ];

  _i3.PayloadWithXmlName? get nested;
  @override
  BodyWithXmlNameInputOutput getPayload() => this;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BodyWithXmlNameInputOutput');
    helper.add('nested', nested);
    return helper.toString();
  }
}

class _BodyWithXmlNameInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<BodyWithXmlNameInputOutput> {
  const _BodyWithXmlNameInputOutputRestXmlSerializer()
      : super('BodyWithXmlNameInputOutput');

  @override
  Iterable<Type> get types =>
      const [BodyWithXmlNameInputOutput, _$BodyWithXmlNameInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  BodyWithXmlNameInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = BodyWithXmlNameInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.PayloadWithXmlName))
                as _i3.PayloadWithXmlName));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as BodyWithXmlNameInputOutput);
    final result = <Object?>[_i1.XmlElementName('Ahoy')];
    if (payload.nested != null) {
      result
        ..add(const _i1.XmlElementName('nested'))
        ..add(serializers.serialize(payload.nested!,
            specifiedType: const FullType(_i3.PayloadWithXmlName)));
    }
    return result;
  }
}
