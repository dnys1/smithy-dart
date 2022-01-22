// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_prefix_headers_output;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_output.g.dart';

abstract class HttpPrefixHeadersOutput
    implements
        Built<HttpPrefixHeadersOutput, HttpPrefixHeadersOutputBuilder>,
        _i1.EmptyPayload {
  factory HttpPrefixHeadersOutput(
          [void Function(HttpPrefixHeadersOutputBuilder) updates]) =
      _$HttpPrefixHeadersOutput;

  const HttpPrefixHeadersOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPrefixHeadersOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersOutputBuilder b) {}
  String? get foo;
  _i2.BuiltMap<String, String>? get fooMap;
  HttpPrefixHeadersOutputPayload getPayload() =>
      HttpPrefixHeadersOutputPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpPrefixHeadersOutputPayload
    implements
        Built<HttpPrefixHeadersOutputPayload,
            HttpPrefixHeadersOutputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpPrefixHeadersOutputPayload(
          [void Function(HttpPrefixHeadersOutputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersOutputPayload;

  const HttpPrefixHeadersOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersOutputPayloadBuilder b) {}
}

class _HttpPrefixHeadersOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpPrefixHeadersOutputPayload> {
  const _HttpPrefixHeadersOutputRestJson1Serializer()
      : super('HttpPrefixHeadersOutput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersOutput,
        _$HttpPrefixHeadersOutput,
        HttpPrefixHeadersOutputPayload,
        _$HttpPrefixHeadersOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
