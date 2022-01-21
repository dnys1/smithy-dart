import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class RestXmlProtocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  RestXmlProtocol({
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

  static final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(const XmlPlugin())
        ..addAll([
          BigIntSerializer.asString,
          const BlobSerializer(),
          const DoubleSerializer(),
          Int64Serializer.asNum,
          TimestampSerializer.dateTime,
          const UnitSerializer(),
        ]))
      .build();

  @override
  ShapeId get protocolId => RestXmlTrait.id;

  /// The `Content-Type` to use for [InputPayload].
  final String? mediaType;

  @override
  String get contentType =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[InputPayload] ??
      'application/xml';

  @override
  FullSerializer<List<int>> get wireSerializer => throw UnimplementedError();

  @override
  Future<String?> resolveErrorType(AWSStreamedHttpResponse response) {
    throw UnimplementedError();
  }
}
