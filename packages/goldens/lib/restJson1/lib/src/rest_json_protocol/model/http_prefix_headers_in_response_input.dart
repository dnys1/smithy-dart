// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.http_prefix_headers_in_response_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_in_response_input.g.dart';

abstract class HttpPrefixHeadersInResponseInput
    with
        _i1.HttpInput<HttpPrefixHeadersInResponseInput>,
        _i2.AWSEquatable<HttpPrefixHeadersInResponseInput>
    implements
        Built<HttpPrefixHeadersInResponseInput,
            HttpPrefixHeadersInResponseInputBuilder>,
        _i1.EmptyPayload {
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
  HttpPrefixHeadersInResponseInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersInResponseInput');
    return helper.toString();
  }
}

class _HttpPrefixHeadersInResponseInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpPrefixHeadersInResponseInput> {
  const _HttpPrefixHeadersInResponseInputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseInput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInResponseInput,
        _$HttpPrefixHeadersInResponseInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersInResponseInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersInResponseInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
