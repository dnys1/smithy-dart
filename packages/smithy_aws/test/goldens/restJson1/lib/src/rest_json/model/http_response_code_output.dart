// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_response_code_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_response_code_output.g.dart';

abstract class HttpResponseCodeOutput
    implements Built<HttpResponseCodeOutput, HttpResponseCodeOutputBuilder> {
  factory HttpResponseCodeOutput(
          [void Function(HttpResponseCodeOutputBuilder) updates]) =
      _$HttpResponseCodeOutput;

  const HttpResponseCodeOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpResponseCodeOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpResponseCodeOutputBuilder b) {}
  int? get status;
  HttpResponseCodeOutputPayload getPayload() => HttpResponseCodeOutputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpResponseCodeOutputPayload
    implements
        Built<HttpResponseCodeOutputPayload,
            HttpResponseCodeOutputPayloadBuilder> {
  factory HttpResponseCodeOutputPayload(
          [void Function(HttpResponseCodeOutputPayloadBuilder) updates]) =
      _$HttpResponseCodeOutputPayload;

  const HttpResponseCodeOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpResponseCodeOutputPayloadBuilder b) {}
}

class _HttpResponseCodeOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpResponseCodeOutputPayload> {
  const _HttpResponseCodeOutputRestJson1Serializer()
      : super('HttpResponseCodeOutput');

  @override
  Iterable<Type> get types => const [
        HttpResponseCodeOutput,
        _$HttpResponseCodeOutput,
        HttpResponseCodeOutputPayload,
        _$HttpResponseCodeOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpResponseCodeOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpResponseCodeOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
