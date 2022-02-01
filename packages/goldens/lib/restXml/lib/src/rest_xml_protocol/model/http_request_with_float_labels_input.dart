// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.http_request_with_float_labels_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_float_labels_input.g.dart';

abstract class HttpRequestWithFloatLabelsInput
    with
        _i1.HttpInput<HttpRequestWithFloatLabelsInputPayload>,
        _i2.AWSEquatable<HttpRequestWithFloatLabelsInput>
    implements
        Built<HttpRequestWithFloatLabelsInput,
            HttpRequestWithFloatLabelsInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithFloatLabelsInputPayload> {
  factory HttpRequestWithFloatLabelsInput(
          [void Function(HttpRequestWithFloatLabelsInputBuilder) updates]) =
      _$HttpRequestWithFloatLabelsInput;

  const HttpRequestWithFloatLabelsInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpRequestWithFloatLabelsInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithFloatLabelsInputBuilder b) {}
  double get double_;
  double get float;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'float':
        return float.toString();
      case 'double':
        return double_.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  HttpRequestWithFloatLabelsInputPayload getPayload() =>
      HttpRequestWithFloatLabelsInputPayload();
  @override
  List<Object?> get props => [double_, float];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithFloatLabelsInput');
    helper.add('double_', double_);
    helper.add('float', float);
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpRequestWithFloatLabelsInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithFloatLabelsInputPayload>
    implements
        Built<HttpRequestWithFloatLabelsInputPayload,
            HttpRequestWithFloatLabelsInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithFloatLabelsInputPayload(
      [void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)
          updates]) = _$HttpRequestWithFloatLabelsInputPayload;

  const HttpRequestWithFloatLabelsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithFloatLabelsInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithFloatLabelsInputPayload');
    return helper.toString();
  }
}

class _HttpRequestWithFloatLabelsInputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithFloatLabelsInputPayload> {
  const _HttpRequestWithFloatLabelsInputRestXmlSerializer()
      : super('HttpRequestWithFloatLabelsInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithFloatLabelsInput,
        _$HttpRequestWithFloatLabelsInput,
        HttpRequestWithFloatLabelsInputPayload,
        _$HttpRequestWithFloatLabelsInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  HttpRequestWithFloatLabelsInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithFloatLabelsInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is HttpRequestWithFloatLabelsInput
        ? object.getPayload()
        : (object as HttpRequestWithFloatLabelsInputPayload);
    final result = <Object?>[
      _i1.XmlElementName('HttpRequestWithFloatLabelsInput')
    ];
    return result;
  }
}
