// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_prefix_headers_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_input.g.dart';

abstract class HttpPrefixHeadersInput
    with _i1.HttpInput<HttpPrefixHeadersInputPayload>
    implements Built<HttpPrefixHeadersInput, HttpPrefixHeadersInputBuilder> {
  factory HttpPrefixHeadersInput(
          [void Function(HttpPrefixHeadersInputBuilder) updates]) =
      _$HttpPrefixHeadersInput;

  const HttpPrefixHeadersInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPrefixHeadersInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInputBuilder b) {}
  String? get foo;
  _i2.BuiltMap<String, String>? get fooMap;
  HttpPrefixHeadersInputPayload getPayload() => HttpPrefixHeadersInputPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpPrefixHeadersInputPayload
    implements
        Built<HttpPrefixHeadersInputPayload,
            HttpPrefixHeadersInputPayloadBuilder> {
  factory HttpPrefixHeadersInputPayload(
          [void Function(HttpPrefixHeadersInputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersInputPayload;

  const HttpPrefixHeadersInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInputPayloadBuilder b) {}
}

class _HttpPrefixHeadersInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpPrefixHeadersInputPayload> {
  const _HttpPrefixHeadersInputRestJson1Serializer()
      : super('HttpPrefixHeadersInput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInput,
        _$HttpPrefixHeadersInput,
        HttpPrefixHeadersInputPayload,
        _$HttpPrefixHeadersInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
