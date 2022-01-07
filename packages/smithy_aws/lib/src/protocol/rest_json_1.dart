import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class RestJson1Protocol<Payload, Input extends HttpInput<Payload>, Output>
    extends AWSHttpProtocol<Payload, Input, Output> {
  RestJson1Protocol({
    this.mediaType,
    List<HttpInterceptor> interceptors = const [],
    List<Object> serializers = const [],
  }) : super(
          _coreSerializers,
          serializers,
          interceptors: interceptors,
        );

  static final _coreSerializers = (Serializers().toBuilder()
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
  late final JsonSerializer<Payload, Output> wireSerializer =
      JsonSerializer(serializers);
}
