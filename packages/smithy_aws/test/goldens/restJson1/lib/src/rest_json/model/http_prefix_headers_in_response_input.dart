// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_prefix_headers_in_response_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_in_response_input.g.dart';

abstract class HttpPrefixHeadersInResponseInput
    with
        _i1.HttpInput<HttpPrefixHeadersInResponseInputPayload>
    implements
        Built<HttpPrefixHeadersInResponseInput,
            HttpPrefixHeadersInResponseInputBuilder>,
        _i1.HasPayload<HttpPrefixHeadersInResponseInputPayload> {
  factory HttpPrefixHeadersInResponseInput(
          [void Function(HttpPrefixHeadersInResponseInputBuilder) updates]) =
      _$HttpPrefixHeadersInResponseInput;

  const HttpPrefixHeadersInResponseInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpPrefixHeadersInResponseInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseInputBuilder b) {}
  @override
  HttpPrefixHeadersInResponseInputPayload getPayload() =>
      HttpPrefixHeadersInResponseInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpPrefixHeadersInResponseInputPayload
    implements
        Built<HttpPrefixHeadersInResponseInputPayload,
            HttpPrefixHeadersInResponseInputPayloadBuilder> {
  factory HttpPrefixHeadersInResponseInputPayload(
      [void Function(HttpPrefixHeadersInResponseInputPayloadBuilder)
          updates]) = _$HttpPrefixHeadersInResponseInputPayload;

  const HttpPrefixHeadersInResponseInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseInputPayloadBuilder b) {}
}

class _HttpPrefixHeadersInResponseInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpPrefixHeadersInResponseInputPayload> {
  const _HttpPrefixHeadersInResponseInputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseInput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInResponseInput,
        _$HttpPrefixHeadersInResponseInput,
        HttpPrefixHeadersInResponseInputPayload,
        _$HttpPrefixHeadersInResponseInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersInResponseInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersInResponseInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
