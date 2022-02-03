// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.recursive_shapes_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'recursive_shapes_input_output.g.dart';

abstract class RecursiveShapesInputOutput
    with
        _i1.HttpInput<RecursiveShapesInputOutput>,
        _i2.AWSEquatable<RecursiveShapesInputOutput>
    implements
        Built<RecursiveShapesInputOutput, RecursiveShapesInputOutputBuilder> {
  factory RecursiveShapesInputOutput(
          [void Function(RecursiveShapesInputOutputBuilder) updates]) =
      _$RecursiveShapesInputOutput;

  const RecursiveShapesInputOutput._();

  factory RecursiveShapesInputOutput.fromResponse(
          RecursiveShapesInputOutput payload,
          _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _RecursiveShapesInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveShapesInputOutputBuilder b) {}
  _i3.RecursiveShapesInputOutputNested1? get nested;
  @override
  RecursiveShapesInputOutput getPayload() => this;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecursiveShapesInputOutput');
    helper.add('nested', nested);
    return helper.toString();
  }
}

class _RecursiveShapesInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<RecursiveShapesInputOutput> {
  const _RecursiveShapesInputOutputRestXmlSerializer()
      : super('RecursiveShapesInputOutput');

  @override
  Iterable<Type> get types =>
      const [RecursiveShapesInputOutput, _$RecursiveShapesInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  RecursiveShapesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RecursiveShapesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.RecursiveShapesInputOutputNested1))
                as _i3.RecursiveShapesInputOutputNested1));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RecursiveShapesInputOutput);
    final result = <Object?>[_i1.XmlElementName('RecursiveShapesInputOutput')];
    if (payload.nested != null) {
      result
        ..add(const _i1.XmlElementName('nested'))
        ..add(serializers.serialize(payload.nested!,
            specifiedType:
                const FullType(_i3.RecursiveShapesInputOutputNested1)));
    }
    return result;
  }
}
