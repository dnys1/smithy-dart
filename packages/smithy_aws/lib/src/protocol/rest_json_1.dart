import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class RestJson1Protocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  RestJson1Protocol({
    this.mediaType,
    List<HttpInterceptor> interceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          _coreSerializers,
          _coreInterceptors,
          serializers: serializers,
          builderFactories: builderFactories,
          interceptors: interceptors,
        );

  static const _coreInterceptors = <HttpInterceptor>[];

  static late final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(SmithyJsonPlugin())
        ..addAll([
          BigIntSerializer.asNum,
          const BlobSerializer(),
          const DoubleSerializer(),
          Int64Serializer.asNum,
          TimestampSerializer.epochSeconds,
          const UnitSerializer(),
        ]))
      .build();

  @override
  ShapeId get protocolId => RestJson1Trait.id;

  /// The `Content-Type` to use for [InputPayload].
  final String? mediaType;

  @override
  String get contentType =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[InputPayload] ??
      'application/json';

  @override
  late final JsonSerializer wireSerializer = JsonSerializer(serializers);

  @override
  Future<String?> resolveErrorType(AWSStreamedHttpResponse response) {
    throw UnimplementedError();
  }
}
