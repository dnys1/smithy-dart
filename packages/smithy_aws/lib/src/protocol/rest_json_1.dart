import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

import 'aws_json_protocol.dart';

class RestJson1Protocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output>
    with AWSJsonProtocol {
  RestJson1Protocol({
    this.mediaType,
    List<HttpRequestInterceptor> requestInterceptors = const [],
    List<HttpResponseInterceptor> responseInterceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          _coreSerializers,
          serializers: serializers,
          builderFactories: builderFactories,
          requestInterceptors: requestInterceptors,
          responseInterceptors: responseInterceptors,
        );

  static late final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(SmithyJsonPlugin())
        ..addAll([
          BigIntSerializer.asNum,
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
  late final JsonSerializer wireSerializer =
      JsonSerializer(serializers, EmptyPayloadType.empty);
}
