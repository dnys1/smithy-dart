// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.http_prefix_headers_in_response_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'http_prefix_headers_in_response_output.g.dart';

abstract class HttpPrefixHeadersInResponseOutput
    with
        _i1.AWSEquatable<HttpPrefixHeadersInResponseOutput>
    implements
        Built<HttpPrefixHeadersInResponseOutput,
            HttpPrefixHeadersInResponseOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HttpPrefixHeadersInResponseOutputPayload> {
  factory HttpPrefixHeadersInResponseOutput(
          [void Function(HttpPrefixHeadersInResponseOutputBuilder) updates]) =
      _$HttpPrefixHeadersInResponseOutput;

  const HttpPrefixHeadersInResponseOutput._();

  factory HttpPrefixHeadersInResponseOutput.fromResponse(
          HttpPrefixHeadersInResponseOutputPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      HttpPrefixHeadersInResponseOutput((b) {
        b.prefixHeaders.addEntries(response.headers.entries);
      });

  static const List<_i2.SmithySerializer> serializers = [
    _HttpPrefixHeadersInResponseOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseOutputBuilder b) {}
  _i3.BuiltMap<String, String>? get prefixHeaders;
  @override
  HttpPrefixHeadersInResponseOutputPayload getPayload() =>
      HttpPrefixHeadersInResponseOutputPayload();
  @override
  List<Object?> get props => [prefixHeaders];
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpPrefixHeadersInResponseOutputPayload
    with
        _i1.AWSEquatable<HttpPrefixHeadersInResponseOutputPayload>
    implements
        Built<HttpPrefixHeadersInResponseOutputPayload,
            HttpPrefixHeadersInResponseOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HttpPrefixHeadersInResponseOutputPayload(
      [void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)
          updates]) = _$HttpPrefixHeadersInResponseOutputPayload;

  const HttpPrefixHeadersInResponseOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _HttpPrefixHeadersInResponseOutputRestJson1Serializer extends _i2
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
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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