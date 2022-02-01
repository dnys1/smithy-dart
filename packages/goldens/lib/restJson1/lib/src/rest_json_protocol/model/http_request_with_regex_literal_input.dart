// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.http_request_with_regex_literal_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_regex_literal_input.g.dart';

abstract class HttpRequestWithRegexLiteralInput
    with
        _i1.HttpInput<HttpRequestWithRegexLiteralInputPayload>,
        _i2.AWSEquatable<HttpRequestWithRegexLiteralInput>
    implements
        Built<HttpRequestWithRegexLiteralInput,
            HttpRequestWithRegexLiteralInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithRegexLiteralInputPayload> {
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

  @override
  HttpRequestWithRegexLiteralInputPayload getPayload() =>
      HttpRequestWithRegexLiteralInputPayload();
  @override
  List<Object?> get props => [str];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithRegexLiteralInput');
    helper.add('str', str);
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpRequestWithRegexLiteralInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithRegexLiteralInputPayload>
    implements
        Built<HttpRequestWithRegexLiteralInputPayload,
            HttpRequestWithRegexLiteralInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithRegexLiteralInputPayload(
      [void Function(HttpRequestWithRegexLiteralInputPayloadBuilder)
          updates]) = _$HttpRequestWithRegexLiteralInputPayload;

  const HttpRequestWithRegexLiteralInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithRegexLiteralInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithRegexLiteralInputPayload');
    return helper.toString();
  }
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
