import 'package:smithy/smithy.dart';

class AwsJson11Protocol<Input extends JsonPayload, Output> extends HttpProtocol<
    Map<String, Object?>, Map<String, Object?>, Input, Output> {
  const AwsJson11Protocol({
    required this.responseConstructor,
  });

  @override
  String get contentType => 'application/x-amz-json-1.1';

  @override
  final JsonConstructor<Output> responseConstructor;

  @override
  JsonSerializer<Map<String, Object?>, Map<String, Object?>> get serializer =>
      const JsonSerializer();
}
