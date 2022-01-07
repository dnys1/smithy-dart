import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';

class RestJson1Protocol<Payload, Input extends HasPayload<Payload>, Output>
    extends HttpProtocol<Payload, Input, Output> {
  const RestJson1Protocol({
    this.mediaType,
    this.interceptors = const [],
    this.additionalSerializers = const [],
  });

  static final serializers = (Serializers().toBuilder()
        ..addPlugin(StandardJsonPlugin())
        ..addAll([
          const UnitSerializer(),
          const BlobSerializer(),
          TimestampSerializer.epochSeconds,
          BigIntSerializer.asNum,
        ]))
      .build();

  @override
  ShapeId get protocolId => RestJson1Trait.id;

  /// The `Content-Type` to use for [Payload].
  final String? mediaType;

  @override
  String get contentType =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[Payload] ??
      'application/json';

  @override
  JsonSerializer<Payload, Output> get serializer =>
      JsonSerializer(serializers, additionalSerializers);

  @override
  final List<HttpInterceptor> interceptors;

  final List<Object> additionalSerializers;
}
