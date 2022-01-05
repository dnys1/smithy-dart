import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';

class RestXmlProtocol<Payload, Input extends HasPayload<Payload>, Output>
    extends HttpProtocol<Payload, Input, Output> {
  const RestXmlProtocol({this.mediaType});

  static final serializers = (Serializers().toBuilder()
        ..addPlugin(const XmlPlugin())
        ..addAll([
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
  FullSerializer<Payload, Output, List<int>> get serializer =>
      throw UnimplementedError();
}
