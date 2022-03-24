// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.http_payload_with_structure_input_output;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/nested_payload.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_structure_input_output.g.dart';

abstract class HttpPayloadWithStructureInputOutput
    with
        _i1.HttpInput<_i2.NestedPayload>,
        _i3.AWSEquatable<HttpPayloadWithStructureInputOutput>
    implements
        Built<HttpPayloadWithStructureInputOutput,
            HttpPayloadWithStructureInputOutputBuilder>,
        _i1.HasPayload<_i2.NestedPayload> {
  factory HttpPayloadWithStructureInputOutput({_i2.NestedPayload? nested}) {
    return _$HttpPayloadWithStructureInputOutput._(nested: nested);
  }

  const HttpPayloadWithStructureInputOutput._();

  factory HttpPayloadWithStructureInputOutput.fromRequest(
      _i2.NestedPayload? payload, _i3.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = HttpPayloadWithStructureInputOutputBuilder();
    if (payload != null) {
      builder.nested.replace(payload);
    }
    return builder.build();
  }

  factory HttpPayloadWithStructureInputOutput.fromResponse(
      _i2.NestedPayload? payload, _i3.AWSBaseHttpResponse response) {
    final builder = HttpPayloadWithStructureInputOutputBuilder();
    if (payload != null) {
      builder.nested.replace(payload);
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPayloadWithStructureInputOutputRestJson1Serializer()
  ];

  _i2.NestedPayload? get nested;
  @override
  _i2.NestedPayload? getPayload() => nested ?? _i2.NestedPayload();
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPayloadWithStructureInputOutput');
    helper.add('nested', nested);
    return helper.toString();
  }
}

class _HttpPayloadWithStructureInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _HttpPayloadWithStructureInputOutputRestJson1Serializer()
      : super('HttpPayloadWithStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithStructureInputOutput,
        _$HttpPayloadWithStructureInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.NestedPayload deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.NestedPayload)) as _i2.NestedPayload);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is HttpPayloadWithStructureInputOutput
        ? object.getPayload()
        : (object as _i2.NestedPayload?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.NestedPayload)) as Object);
  }
}
