// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_response_code_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'http_response_code_output.g.dart';

abstract class HttpResponseCodeOutput
    with _i1.AWSEquatable<HttpResponseCodeOutput>
    implements
        Built<HttpResponseCodeOutput, HttpResponseCodeOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HttpResponseCodeOutputPayload> {
  factory HttpResponseCodeOutput(
          [void Function(HttpResponseCodeOutputBuilder) updates]) =
      _$HttpResponseCodeOutput;

  const HttpResponseCodeOutput._();

  factory HttpResponseCodeOutput.fromResponse(
          HttpResponseCodeOutputPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      HttpResponseCodeOutput((b) {
        b.status = response.statusCode;
      });

  static const List<_i2.SmithySerializer> serializers = [
    _HttpResponseCodeOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpResponseCodeOutputBuilder b) {}
  int? get status;
  @override
  HttpResponseCodeOutputPayload getPayload() => HttpResponseCodeOutputPayload();
  @override
  List<Object?> get props => [status];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpResponseCodeOutputPayload
    with
        _i1.AWSEquatable<HttpResponseCodeOutputPayload>
    implements
        Built<HttpResponseCodeOutputPayload,
            HttpResponseCodeOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HttpResponseCodeOutputPayload(
          [void Function(HttpResponseCodeOutputPayloadBuilder) updates]) =
      _$HttpResponseCodeOutputPayload;

  const HttpResponseCodeOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpResponseCodeOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _HttpResponseCodeOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<HttpResponseCodeOutputPayload> {
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
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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
