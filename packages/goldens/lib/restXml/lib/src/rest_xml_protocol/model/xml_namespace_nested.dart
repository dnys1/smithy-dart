// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.xml_namespace_nested;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'xml_namespace_nested.g.dart';

abstract class XmlNamespaceNested
    with _i1.AWSEquatable<XmlNamespaceNested>
    implements Built<XmlNamespaceNested, XmlNamespaceNestedBuilder> {
  factory XmlNamespaceNested(
          [void Function(XmlNamespaceNestedBuilder) updates]) =
      _$XmlNamespaceNested;

  const XmlNamespaceNested._();

  static const List<_i2.SmithySerializer> serializers = [
    _XmlNamespaceNestedRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlNamespaceNestedBuilder b) {}
  String? get foo;
  _i3.BuiltList<String>? get values;
  @override
  List<Object?> get props => [foo, values];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNamespaceNested');
    helper.add('foo', foo);
    helper.add('values', values);
    return helper.toString();
  }
}

class _XmlNamespaceNestedRestXmlSerializer
    extends _i2.StructuredSmithySerializer<XmlNamespaceNested> {
  const _XmlNamespaceNestedRestXmlSerializer() : super('XmlNamespaceNested');

  @override
  Iterable<Type> get types => const [XmlNamespaceNested, _$XmlNamespaceNested];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  XmlNamespaceNested deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = XmlNamespaceNestedBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'values':
          if (value != null) {
            result.values.replace(const _i2.XmlBuiltListSerializer(
                    memberNamespace: _i2.XmlNamespace('http://bux.com'))
                .deserialize(serializers, (value as Iterable<Object?>),
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(String)])));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as XmlNamespaceNested);
    final result = <Object?>[
      _i2.XmlElementName(
          'XmlNamespaceNested', const _i2.XmlNamespace('http://foo.com'))
    ];
    if (payload.foo != null) {
      result
        ..add(const _i2.XmlElementName(
            'foo', _i2.XmlNamespace('http://baz.com', 'baz')))
        ..add(serializers.serialize(payload.foo!,
            specifiedType: const FullType(String)));
    }
    if (payload.values != null) {
      result
        ..add(const _i2.XmlElementName(
            'values', _i2.XmlNamespace('http://qux.com')))
        ..add(const _i2.XmlBuiltListSerializer(
                memberNamespace: _i2.XmlNamespace('http://bux.com'))
            .serialize(serializers, payload.values!,
                specifiedType: const FullType.nullable(
                    _i3.BuiltList, [FullType(String)])));
    }
    return result;
  }
}
