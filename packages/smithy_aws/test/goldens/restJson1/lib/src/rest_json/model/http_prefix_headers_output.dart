// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_prefix_headers_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'http_prefix_headers_output.g.dart';

abstract class HttpPrefixHeadersOutput
    with _i1.AWSEquatable<HttpPrefixHeadersOutput>
    implements
        Built<HttpPrefixHeadersOutput, HttpPrefixHeadersOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HttpPrefixHeadersOutputPayload> {
  factory HttpPrefixHeadersOutput(
          [void Function(HttpPrefixHeadersOutputBuilder) updates]) =
      _$HttpPrefixHeadersOutput;

  const HttpPrefixHeadersOutput._();

  factory HttpPrefixHeadersOutput.fromResponse(
          HttpPrefixHeadersOutputPayload payload,
          _i1.AWSStreamedHttpResponse response) =>
      HttpPrefixHeadersOutput((b) {
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
        b.fooMap.addEntries(response.headers.entries
            .where((el) => el.key.startsWith('X-Foo-'))
            .map(
                (el) => MapEntry(el.key.replaceFirst('X-Foo-', ''), el.value)));
      });

  static const List<_i2.SmithySerializer> serializers = [
    _HttpPrefixHeadersOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersOutputBuilder b) {}
  String? get foo;
  _i3.BuiltMap<String, String>? get fooMap;
  @override
  HttpPrefixHeadersOutputPayload getPayload() =>
      HttpPrefixHeadersOutputPayload();
  @override
  List<Object?> get props => [foo, fooMap];
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpPrefixHeadersOutputPayload
    with
        _i1.AWSEquatable<HttpPrefixHeadersOutputPayload>
    implements
        Built<HttpPrefixHeadersOutputPayload,
            HttpPrefixHeadersOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HttpPrefixHeadersOutputPayload(
          [void Function(HttpPrefixHeadersOutputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersOutputPayload;

  const HttpPrefixHeadersOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _HttpPrefixHeadersOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<HttpPrefixHeadersOutputPayload> {
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
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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
