import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class RestJson1Protocol<Payload, Input extends HttpInput<Payload>, Output>
    extends AWSHttpProtocol<Payload, Input, Output> {
  RestJson1Protocol({
    this.mediaType,
    List<HttpInterceptor> interceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<Type, Function> builderFactories = const {},
  }) : super(
          _coreSerializers,
          serializers: serializers,
          builderFactories: builderFactories,
          interceptors: interceptors,
        );

  static late final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(SmithyJsonPlugin())
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
  late final JsonSerializer wireSerializer = JsonSerializer(serializers);
}
