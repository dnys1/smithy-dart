// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_request_with_regex_literal_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_regex_literal_input.g.dart';

abstract class HttpRequestWithRegexLiteralInput
    with
        _i1.HttpInput<HttpRequestWithRegexLiteralInputPayload>
    implements
        Built<HttpRequestWithRegexLiteralInput,
            HttpRequestWithRegexLiteralInputBuilder> {
  factory HttpRequestWithRegexLiteralInput(
          [void Function(HttpRequestWithRegexLiteralInputBuilder) updates]) =
      _$HttpRequestWithRegexLiteralInput;

  const HttpRequestWithRegexLiteralInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpRequestWithRegexLiteralInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithRegexLiteralInputBuilder b) {}
  String get str;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'str':
        return str;
    }
    throw _i1.MissingLabelException(this, key);
  }

  HttpRequestWithRegexLiteralInputPayload getPayload() =>
      HttpRequestWithRegexLiteralInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpRequestWithRegexLiteralInputPayload
    implements
        Built<HttpRequestWithRegexLiteralInputPayload,
            HttpRequestWithRegexLiteralInputPayloadBuilder> {
  factory HttpRequestWithRegexLiteralInputPayload(
      [void Function(HttpRequestWithRegexLiteralInputPayloadBuilder)
          updates]) = _$HttpRequestWithRegexLiteralInputPayload;

  const HttpRequestWithRegexLiteralInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithRegexLiteralInputPayloadBuilder b) {}
}

class _HttpRequestWithRegexLiteralInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithRegexLiteralInputPayload> {
  const _HttpRequestWithRegexLiteralInputRestJson1Serializer()
      : super('HttpRequestWithRegexLiteralInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithRegexLiteralInput,
        _$HttpRequestWithRegexLiteralInput,
        HttpRequestWithRegexLiteralInputPayload,
        _$HttpRequestWithRegexLiteralInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpRequestWithRegexLiteralInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithRegexLiteralInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
