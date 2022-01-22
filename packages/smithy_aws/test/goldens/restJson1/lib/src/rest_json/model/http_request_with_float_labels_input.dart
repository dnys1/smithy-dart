// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_request_with_float_labels_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_float_labels_input.g.dart';

abstract class HttpRequestWithFloatLabelsInput
    with
        _i1.HttpInput<HttpRequestWithFloatLabelsInputPayload>
    implements
        Built<HttpRequestWithFloatLabelsInput,
            HttpRequestWithFloatLabelsInputBuilder> {
  factory HttpRequestWithFloatLabelsInput(
          [void Function(HttpRequestWithFloatLabelsInputBuilder) updates]) =
      _$HttpRequestWithFloatLabelsInput;

  const HttpRequestWithFloatLabelsInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpRequestWithFloatLabelsInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithFloatLabelsInputBuilder b) {}
  double get double$;
  double get float;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'float':
        return float.toString();
      case 'double':
        return double$.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  HttpRequestWithFloatLabelsInputPayload getPayload() =>
      HttpRequestWithFloatLabelsInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpRequestWithFloatLabelsInputPayload
    implements
        Built<HttpRequestWithFloatLabelsInputPayload,
            HttpRequestWithFloatLabelsInputPayloadBuilder> {
  factory HttpRequestWithFloatLabelsInputPayload(
      [void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)
          updates]) = _$HttpRequestWithFloatLabelsInputPayload;

  const HttpRequestWithFloatLabelsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithFloatLabelsInputPayloadBuilder b) {}
}

class _HttpRequestWithFloatLabelsInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithFloatLabelsInputPayload> {
  const _HttpRequestWithFloatLabelsInputRestJson1Serializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpRequestWithFloatLabelsInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithFloatLabelsInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
