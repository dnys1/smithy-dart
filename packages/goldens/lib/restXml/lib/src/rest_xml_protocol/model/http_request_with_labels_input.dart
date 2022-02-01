// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.http_request_with_labels_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_labels_input.g.dart';

abstract class HttpRequestWithLabelsInput
    with
        _i1.HttpInput<HttpRequestWithLabelsInputPayload>,
        _i2.AWSEquatable<HttpRequestWithLabelsInput>
    implements
        Built<HttpRequestWithLabelsInput, HttpRequestWithLabelsInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithLabelsInputPayload> {
  factory HttpRequestWithLabelsInput(
          [void Function(HttpRequestWithLabelsInputBuilder) updates]) =
      _$HttpRequestWithLabelsInput;

  const HttpRequestWithLabelsInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpRequestWithLabelsInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithLabelsInputBuilder b) {}

  /// Serialized in the path as true or false.
  bool get boolean;
  double get double_;
  double get float;
  int get integer;
  _i3.Int64 get long;
  int get short;
  String get string;

  /// Note that this member has no format, so it's serialized as an RFC 3399 date-time.
  DateTime get timestamp;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'string':
        return string;
      case 'short':
        return short.toString();
      case 'integer':
        return integer.toString();
      case 'long':
        return long.toString();
      case 'float':
        return float.toString();
      case 'double':
        return double_.toString();
      case 'boolean':
        return boolean.toString();
      case 'timestamp':
        return _i1.Timestamp(timestamp)
            .format(_i1.TimestampFormat.dateTime)
            .toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  HttpRequestWithLabelsInputPayload getPayload() =>
      HttpRequestWithLabelsInputPayload();
  @override
  List<Object?> get props =>
      [boolean, double_, float, integer, long, short, string, timestamp];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpRequestWithLabelsInput');
    helper.add('boolean', boolean);
    helper.add('double_', double_);
    helper.add('float', float);
    helper.add('integer', integer);
    helper.add('long', long);
    helper.add('short', short);
    helper.add('string', string);
    helper.add('timestamp', timestamp);
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpRequestWithLabelsInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithLabelsInputPayload>
    implements
        Built<HttpRequestWithLabelsInputPayload,
            HttpRequestWithLabelsInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithLabelsInputPayload(
          [void Function(HttpRequestWithLabelsInputPayloadBuilder) updates]) =
      _$HttpRequestWithLabelsInputPayload;

  const HttpRequestWithLabelsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithLabelsInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithLabelsInputPayload');
    return helper.toString();
  }
}

class _HttpRequestWithLabelsInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<HttpRequestWithLabelsInputPayload> {
  const _HttpRequestWithLabelsInputRestXmlSerializer()
      : super('HttpRequestWithLabelsInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithLabelsInput,
        _$HttpRequestWithLabelsInput,
        HttpRequestWithLabelsInputPayload,
        _$HttpRequestWithLabelsInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  HttpRequestWithLabelsInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpRequestWithLabelsInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is HttpRequestWithLabelsInput
        ? object.getPayload()
        : (object as HttpRequestWithLabelsInputPayload);
    final result = <Object?>[_i1.XmlElementName('HttpRequestWithLabelsInput')];
    return result;
  }
}
