// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.xml_namespaces_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/xml_namespace_nested.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_namespaces_input_output.g.dart';

abstract class XmlNamespacesInputOutput
    with
        _i1.HttpInput<XmlNamespacesInputOutput>,
        _i2.AWSEquatable<XmlNamespacesInputOutput>
    implements
        Built<XmlNamespacesInputOutput, XmlNamespacesInputOutputBuilder> {
  factory XmlNamespacesInputOutput(
          [void Function(XmlNamespacesInputOutputBuilder) updates]) =
      _$XmlNamespacesInputOutput;

  const XmlNamespacesInputOutput._();

  factory XmlNamespacesInputOutput.fromRequest(
          XmlNamespacesInputOutput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  /// Constructs a [XmlNamespacesInputOutput] from a [payload] and [response].
  factory XmlNamespacesInputOutput.fromResponse(
          XmlNamespacesInputOutput payload, _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _XmlNamespacesInputOutputRestXmlSerializer()
  ];

  _i3.XmlNamespaceNested? get nested;
  @override
  XmlNamespacesInputOutput getPayload() => this;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNamespacesInputOutput');
    helper.add('nested', nested);
    return helper.toString();
  }
}

class _XmlNamespacesInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlNamespacesInputOutput> {
  const _XmlNamespacesInputOutputRestXmlSerializer()
      : super('XmlNamespacesInputOutput');

  @override
  Iterable<Type> get types =>
      const [XmlNamespacesInputOutput, _$XmlNamespacesInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  XmlNamespacesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = XmlNamespacesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.XmlNamespaceNested))
                as _i3.XmlNamespaceNested));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as XmlNamespacesInputOutput);
    final result = <Object?>[
      _i1.XmlElementName(
          'XmlNamespacesInputOutput', const _i1.XmlNamespace('http://foo.com'))
    ];
    if (payload.nested != null) {
      result
        ..add(const _i1.XmlElementName('nested'))
        ..add(serializers.serialize(payload.nested!,
            specifiedType: const FullType(_i3.XmlNamespaceNested)));
    }
    return result;
  }
}
