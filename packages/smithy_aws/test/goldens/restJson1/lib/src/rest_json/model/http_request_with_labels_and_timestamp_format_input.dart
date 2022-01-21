// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_request_with_labels_and_timestamp_format_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_labels_and_timestamp_format_input.g.dart';

abstract class HttpRequestWithLabelsAndTimestampFormatInput
    with
        _i1.HttpInput<HttpRequestWithLabelsAndTimestampFormatInputPayload>
    implements
        Built<HttpRequestWithLabelsAndTimestampFormatInput,
            HttpRequestWithLabelsAndTimestampFormatInputBuilder>,
        _i1.HasPayload<HttpRequestWithLabelsAndTimestampFormatInputPayload> {
  factory HttpRequestWithLabelsAndTimestampFormatInput(
      [void Function(HttpRequestWithLabelsAndTimestampFormatInputBuilder)
          updates]) = _$HttpRequestWithLabelsAndTimestampFormatInput;

  const HttpRequestWithLabelsAndTimestampFormatInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpRequestWithLabelsAndTimestampFormatInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithLabelsAndTimestampFormatInputBuilder b) {}
  DateTime get defaultFormat;
  DateTime get memberDateTime;
  DateTime get memberEpochSeconds;
  DateTime get memberHttpDate;
  DateTime get targetDateTime;
  DateTime get targetEpochSeconds;
  DateTime get targetHttpDate;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'memberEpochSeconds':
        return memberEpochSeconds.toString();
      case 'memberHttpDate':
        return memberHttpDate.toString();
      case 'memberDateTime':
        return memberDateTime.toString();
      case 'defaultFormat':
        return defaultFormat.toString();
      case 'targetEpochSeconds':
        return targetEpochSeconds.toString();
      case 'targetHttpDate':
        return targetHttpDate.toString();
      case 'targetDateTime':
        return targetDateTime.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  HttpRequestWithLabelsAndTimestampFormatInputPayload getPayload() =>
      HttpRequestWithLabelsAndTimestampFormatInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpRequestWithLabelsAndTimestampFormatInputPayload
    implements
        Built<HttpRequestWithLabelsAndTimestampFormatInputPayload,
            HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder> {
  factory HttpRequestWithLabelsAndTimestampFormatInputPayload(
      [void Function(HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder)
          updates]) = _$HttpRequestWithLabelsAndTimestampFormatInputPayload;

  const HttpRequestWithLabelsAndTimestampFormatInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder b) {}
}

class _HttpRequestWithLabelsAndTimestampFormatInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<
        HttpRequestWithLabelsAndTimestampFormatInputPayload> {
  const _HttpRequestWithLabelsAndTimestampFormatInputRestJson1Serializer()
      : super('HttpRequestWithLabelsAndTimestampFormatInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithLabelsAndTimestampFormatInput,
        _$HttpRequestWithLabelsAndTimestampFormatInput,
        HttpRequestWithLabelsAndTimestampFormatInputPayload,
        _$HttpRequestWithLabelsAndTimestampFormatInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpRequestWithLabelsAndTimestampFormatInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithLabelsAndTimestampFormatInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
