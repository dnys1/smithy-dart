// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.http_prefix_headers_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_input_output.g.dart';

abstract class HttpPrefixHeadersInputOutput
    with
        _i1.HttpInput<HttpPrefixHeadersInputOutputPayload>,
        _i2.AWSEquatable<HttpPrefixHeadersInputOutput>
    implements
        Built<HttpPrefixHeadersInputOutput,
            HttpPrefixHeadersInputOutputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpPrefixHeadersInputOutputPayload> {
  factory HttpPrefixHeadersInputOutput(
          [void Function(HttpPrefixHeadersInputOutputBuilder) updates]) =
      _$HttpPrefixHeadersInputOutput;

  const HttpPrefixHeadersInputOutput._();

  factory HttpPrefixHeadersInputOutput.fromResponse(
          HttpPrefixHeadersInputOutputPayload payload,
          _i2.AWSStreamedHttpResponse response) =>
      HttpPrefixHeadersInputOutput((b) {
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
        b.fooMap.addEntries(response.headers.entries
            .where((el) => el.key.startsWith('X-Foo-'))
            .map(
                (el) => MapEntry(el.key.replaceFirst('X-Foo-', ''), el.value)));
      });

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPrefixHeadersInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInputOutputBuilder b) {}
  String? get foo;
  _i3.BuiltMap<String, String>? get fooMap;
  @override
  HttpPrefixHeadersInputOutputPayload getPayload() =>
      HttpPrefixHeadersInputOutputPayload();
  @override
  List<Object?> get props => [foo, fooMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpPrefixHeadersInputOutput');
    helper.add('foo', foo);
    helper.add('fooMap', fooMap);
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpPrefixHeadersInputOutputPayload
    with
        _i2.AWSEquatable<HttpPrefixHeadersInputOutputPayload>
    implements
        Built<HttpPrefixHeadersInputOutputPayload,
            HttpPrefixHeadersInputOutputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpPrefixHeadersInputOutputPayload(
          [void Function(HttpPrefixHeadersInputOutputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersInputOutputPayload;

  const HttpPrefixHeadersInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInputOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersInputOutputPayload');
    return helper.toString();
  }
}

class _HttpPrefixHeadersInputOutputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<HttpPrefixHeadersInputOutputPayload> {
  const _HttpPrefixHeadersInputOutputRestXmlSerializer()
      : super('HttpPrefixHeadersInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInputOutput,
        _$HttpPrefixHeadersInputOutput,
        HttpPrefixHeadersInputOutputPayload,
        _$HttpPrefixHeadersInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  HttpPrefixHeadersInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersInputOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is HttpPrefixHeadersInputOutput
        ? object.getPayload()
        : (object as HttpPrefixHeadersInputOutputPayload);
    final result = <Object?>[
      _i1.XmlElementName('HttpPrefixHeadersInputOutput')
    ];
    return result;
  }
}
