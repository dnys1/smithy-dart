import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class RestXmlProtocol<Payload, Input extends HttpInput<Payload>, Output>
    extends AWSHttpProtocol<Payload, Input, Output> {
  RestXmlProtocol({
    this.mediaType,
    List<HttpInterceptor> interceptors = const [],
    List<Object> serializers = const [],
  }) : super(
          _coreSerializers,
          serializers,
          interceptors: interceptors,
        );

  static final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(const XmlPlugin())
        ..addAll([
          const UnitSerializer(),
          const BlobSerializer(),
          TimestampSerializer.dateTime,
          BigIntSerializer.asString,
        ]))
      .build();

  @override
  ShapeId get protocolId => RestXmlTrait.id;

  /// The `Content-Type` to use for [Payload].
  final String? mediaType;

  @override
  String get contentType =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[Payload] ??
      'application/xml';

  @override
  FullSerializer<Payload, Output, List<int>> get wireSerializer =>
      throw UnimplementedError();
}
