// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.xml_maps_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/greeting_struct.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_maps_input_output.g.dart';

abstract class XmlMapsInputOutput
    with _i1.HttpInput<XmlMapsInputOutput>, _i2.AWSEquatable<XmlMapsInputOutput>
    implements Built<XmlMapsInputOutput, XmlMapsInputOutputBuilder> {
  factory XmlMapsInputOutput(
      {_i3.BuiltMap<String, _i4.GreetingStruct>? myMap}) {
    return _$XmlMapsInputOutput._(myMap: myMap);
  }

  factory XmlMapsInputOutput.build(
          [void Function(XmlMapsInputOutputBuilder) updates]) =
      _$XmlMapsInputOutput;

  const XmlMapsInputOutput._();

  factory XmlMapsInputOutput.fromRequest(
          XmlMapsInputOutput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  /// Constructs a [XmlMapsInputOutput] from a [payload] and [response].
  factory XmlMapsInputOutput.fromResponse(
          XmlMapsInputOutput payload, _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _XmlMapsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlMapsInputOutputBuilder b) {}
  _i3.BuiltMap<String, _i4.GreetingStruct>? get myMap;
  @override
  XmlMapsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlMapsInputOutput');
    helper.add('myMap', myMap);
    return helper.toString();
  }
}

class _XmlMapsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlMapsInputOutput> {
  const _XmlMapsInputOutputRestXmlSerializer() : super('XmlMapsInputOutput');

  @override
  Iterable<Type> get types => const [XmlMapsInputOutput, _$XmlMapsInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  XmlMapsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = XmlMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'myMap':
          if (value != null) {
            result.myMap.replace(const _i1.XmlBuiltMapSerializer().deserialize(
                serializers, (value as Iterable<Object?>),
                specifiedType: const FullType(_i3.BuiltMap,
                    [FullType(String), FullType(_i4.GreetingStruct)])));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as XmlMapsInputOutput);
    final result = <Object?>[const _i1.XmlElementName('XmlMapsInputOutput')];
    if (payload.myMap != null) {
      result
        ..add(const _i1.XmlElementName('myMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
            serializers, payload.myMap!,
            specifiedType: const FullType.nullable(_i3.BuiltMap,
                [FullType(String), FullType(_i4.GreetingStruct)])));
    }
    return result;
  }
}
