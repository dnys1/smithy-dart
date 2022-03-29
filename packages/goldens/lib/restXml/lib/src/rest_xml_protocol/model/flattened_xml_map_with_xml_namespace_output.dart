// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.flattened_xml_map_with_xml_namespace_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'flattened_xml_map_with_xml_namespace_output.g.dart';

abstract class FlattenedXmlMapWithXmlNamespaceOutput
    with
        _i1.AWSEquatable<FlattenedXmlMapWithXmlNamespaceOutput>
    implements
        Built<FlattenedXmlMapWithXmlNamespaceOutput,
            FlattenedXmlMapWithXmlNamespaceOutputBuilder> {
  factory FlattenedXmlMapWithXmlNamespaceOutput(
      [void Function(FlattenedXmlMapWithXmlNamespaceOutputBuilder)
          updates]) = _$FlattenedXmlMapWithXmlNamespaceOutput;

  const FlattenedXmlMapWithXmlNamespaceOutput._();

  /// Constructs a [FlattenedXmlMapWithXmlNamespaceOutput] from a [payload] and [response].
  factory FlattenedXmlMapWithXmlNamespaceOutput.fromResponse(
          FlattenedXmlMapWithXmlNamespaceOutput payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlattenedXmlMapWithXmlNamespaceOutputBuilder b) {}
  _i3.BuiltMap<String, String>? get myMap;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FlattenedXmlMapWithXmlNamespaceOutput');
    helper.add('myMap', myMap);
    return helper.toString();
  }
}

class _FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer extends _i2
    .StructuredSmithySerializer<FlattenedXmlMapWithXmlNamespaceOutput> {
  const _FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer()
      : super('FlattenedXmlMapWithXmlNamespaceOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapWithXmlNamespaceOutput,
        _$FlattenedXmlMapWithXmlNamespaceOutput
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  FlattenedXmlMapWithXmlNamespaceOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = FlattenedXmlMapWithXmlNamespaceOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'KVP':
          if (value != null) {
            result.myMap.addAll(const _i2.XmlBuiltMapSerializer(
                    keyName: 'K', valueName: 'V', flattenedKey: 'KVP')
                .deserialize(serializers, (value as Iterable<Object?>),
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(String)]))
                .toMap()
                .cast());
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as FlattenedXmlMapWithXmlNamespaceOutput);
    final result = <Object?>[
      _i2.XmlElementName('FlattenedXmlMapWithXmlNamespaceOutput')
    ];
    if (payload.myMap != null) {
      result.addAll(const _i2.XmlBuiltMapSerializer(
              keyName: 'K', valueName: 'V', flattenedKey: 'KVP')
          .serialize(serializers, payload.myMap!,
              specifiedType: const FullType.nullable(
                  _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    return result;
  }
}
