// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_request_with_greedy_label_in_path_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_greedy_label_in_path_input.g.dart';

abstract class HttpRequestWithGreedyLabelInPathInput
    with
        _i1.HttpInput<HttpRequestWithGreedyLabelInPathInputPayload>
    implements
        Built<HttpRequestWithGreedyLabelInPathInput,
            HttpRequestWithGreedyLabelInPathInputBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithGreedyLabelInPathInput(
      [void Function(HttpRequestWithGreedyLabelInPathInputBuilder)
          updates]) = _$HttpRequestWithGreedyLabelInPathInput;

  const HttpRequestWithGreedyLabelInPathInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpRequestWithGreedyLabelInPathInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithGreedyLabelInPathInputBuilder b) {}
  String get baz;
  String get foo;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'foo':
        return foo;
      case 'baz':
        return baz;
    }
    throw _i1.MissingLabelException(this, key);
  }

  HttpRequestWithGreedyLabelInPathInputPayload getPayload() =>
      HttpRequestWithGreedyLabelInPathInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpRequestWithGreedyLabelInPathInputPayload
    implements
        Built<HttpRequestWithGreedyLabelInPathInputPayload,
            HttpRequestWithGreedyLabelInPathInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithGreedyLabelInPathInputPayload(
      [void Function(HttpRequestWithGreedyLabelInPathInputPayloadBuilder)
          updates]) = _$HttpRequestWithGreedyLabelInPathInputPayload;

  const HttpRequestWithGreedyLabelInPathInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithGreedyLabelInPathInputPayloadBuilder b) {}
}

class _HttpRequestWithGreedyLabelInPathInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithGreedyLabelInPathInputPayload> {
  const _HttpRequestWithGreedyLabelInPathInputRestJson1Serializer()
      : super('HttpRequestWithGreedyLabelInPathInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithGreedyLabelInPathInput,
        _$HttpRequestWithGreedyLabelInPathInput,
        HttpRequestWithGreedyLabelInPathInputPayload,
        _$HttpRequestWithGreedyLabelInPathInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpRequestWithGreedyLabelInPathInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithGreedyLabelInPathInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
