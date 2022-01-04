import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy/smithy.dart';

class AwsJson1_1Protocol<Input extends HasPayload, Output>
    extends HttpProtocol<Object?, Input, Output> {
  const AwsJson1_1Protocol();

  static final serializers = (Serializers().toBuilder()
        ..addPlugin(StandardJsonPlugin())
        ..addAll([
          TimestampSerializer.epochSeconds,
          BigIntSerializer.asNum,
        ]))
      .build();

  @override
  String contentType<RequestPayload extends Object?>() =>
      'application/x-amz-json-1.1';

  @override
  JsonSerializer<Input, Output> get serializer => JsonSerializer(serializers);
}

// ignore_for_file: camel_case_types