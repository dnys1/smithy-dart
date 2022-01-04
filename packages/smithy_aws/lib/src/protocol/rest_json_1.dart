import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart';

class RestJson1Protocol<Payload, Input extends HasPayload<Payload>, Output>
    extends HttpProtocol<Object?, Input, Output> {
  const RestJson1Protocol({this.mediaType});

  static final serializers = (Serializers().toBuilder()
        ..addPlugin(StandardJsonPlugin())
        ..addAll([
          TimestampSerializer.epochSeconds,
          BigIntSerializer.asNum,
        ]))
      .build();

  /// The `Content-Type` to use for [Payload].
  final String? mediaType;

  @override
  String contentType<RequestPayload extends Object?>() =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[Payload] ??
      'application/json';

  @override
  JsonSerializer<Payload, Output> get serializer => JsonSerializer(serializers);
}
