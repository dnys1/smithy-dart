// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_prefix_headers_in_response_output;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_in_response_output.g.dart';

abstract class HttpPrefixHeadersInResponseOutput
    implements
        Built<HttpPrefixHeadersInResponseOutput,
            HttpPrefixHeadersInResponseOutputBuilder> {
  factory HttpPrefixHeadersInResponseOutput(
          [void Function(HttpPrefixHeadersInResponseOutputBuilder) updates]) =
      _$HttpPrefixHeadersInResponseOutput;

  const HttpPrefixHeadersInResponseOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPrefixHeadersInResponseOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseOutputBuilder b) {}
  _i2.BuiltMap<String, String>? get prefixHeaders;
  HttpPrefixHeadersInResponseOutputPayload getPayload() =>
      HttpPrefixHeadersInResponseOutputPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpPrefixHeadersInResponseOutputPayload
    implements
        Built<HttpPrefixHeadersInResponseOutputPayload,
            HttpPrefixHeadersInResponseOutputPayloadBuilder> {
  factory HttpPrefixHeadersInResponseOutputPayload(
      [void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)
          updates]) = _$HttpPrefixHeadersInResponseOutputPayload;

  const HttpPrefixHeadersInResponseOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseOutputPayloadBuilder b) {}
}

class _HttpPrefixHeadersInResponseOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpPrefixHeadersInResponseOutputPayload> {
  const _HttpPrefixHeadersInResponseOutputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseOutput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInResponseOutput,
        _$HttpPrefixHeadersInResponseOutput,
        HttpPrefixHeadersInResponseOutputPayload,
        _$HttpPrefixHeadersInResponseOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersInResponseOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersInResponseOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
