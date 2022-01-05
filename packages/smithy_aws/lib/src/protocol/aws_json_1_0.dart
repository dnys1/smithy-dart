import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';

class AwsJson1_0Protocol<Payload, Input extends HasPayload<Payload>, Output>
    extends HttpProtocol<Payload, Input, Output> {
  const AwsJson1_0Protocol();

  static final serializers = (Serializers().toBuilder()
        ..addPlugin(StandardJsonPlugin())
        ..addAll([
          const BlobSerializer(),
          TimestampSerializer.epochSeconds,
          BigIntSerializer.asNum,
        ]))
      .build();

  @override
  ShapeId get protocolId => AwsJson1_0Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.0';

  @override
  JsonSerializer<Payload, Output> get serializer => JsonSerializer(serializers);
}

// ignore_for_file: camel_case_types
