import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_ast/smithy_ast.dart';

class AwsJson1_1Protocol<Payload, Input extends HasPayload<Payload>, Output>
    extends HttpProtocol<Payload, Input, Output> {
  const AwsJson1_1Protocol({
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
  ShapeId get protocolId => AwsJson1_1Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.1';

  @override
  JsonSerializer<Payload, Output> get serializer =>
      JsonSerializer(serializers, additionalSerializers);

  @override
  final List<HttpInterceptor> interceptors;

  final List<Object> additionalSerializers;
}

// ignore_for_file: camel_case_types