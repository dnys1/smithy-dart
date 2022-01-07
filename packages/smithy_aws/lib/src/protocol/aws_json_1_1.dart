import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class AwsJson1_1Protocol<Payload, Input extends HttpInput<Payload>, Output>
    extends AWSHttpProtocol<Payload, Input, Output> {
  AwsJson1_1Protocol({
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
  ShapeId get protocolId => AwsJson1_1Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.1';

  @override
  late final JsonSerializer<Payload, Output> wireSerializer =
      JsonSerializer(serializers);
}

// ignore_for_file: camel_case_types