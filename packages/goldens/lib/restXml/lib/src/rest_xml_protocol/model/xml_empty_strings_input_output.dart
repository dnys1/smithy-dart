// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.xml_empty_strings_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'xml_empty_strings_input_output.g.dart';

abstract class XmlEmptyStringsInputOutput
    with
        _i1.HttpInput<XmlEmptyStringsInputOutput>,
        _i2.AWSEquatable<XmlEmptyStringsInputOutput>
    implements
        Built<XmlEmptyStringsInputOutput, XmlEmptyStringsInputOutputBuilder> {
  factory XmlEmptyStringsInputOutput(
          [void Function(XmlEmptyStringsInputOutputBuilder) updates]) =
      _$XmlEmptyStringsInputOutput;

  const XmlEmptyStringsInputOutput._();

  factory XmlEmptyStringsInputOutput.fromRequest(
          XmlEmptyStringsInputOutput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  factory XmlEmptyStringsInputOutput.fromResponse(
          XmlEmptyStringsInputOutput payload,
          _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _XmlEmptyStringsInputOutputRestXmlSerializer()
  ];

  String? get emptyString;
  @override
  XmlEmptyStringsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [emptyString];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlEmptyStringsInputOutput');
    helper.add('emptyString', emptyString);
    return helper.toString();
  }
}

class _XmlEmptyStringsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlEmptyStringsInputOutput> {
  const _XmlEmptyStringsInputOutputRestXmlSerializer()
      : super('XmlEmptyStringsInputOutput');

  @override
  Iterable<Type> get types =>
      const [XmlEmptyStringsInputOutput, _$XmlEmptyStringsInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  XmlEmptyStringsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = XmlEmptyStringsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'emptyString':
          if (value != null) {
            result.emptyString = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as XmlEmptyStringsInputOutput);
    final result = <Object?>[_i1.XmlElementName('XmlEmptyStringsInputOutput')];
    if (payload.emptyString != null) {
      result
        ..add(const _i1.XmlElementName('emptyString'))
        ..add(serializers.serialize(payload.emptyString!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
