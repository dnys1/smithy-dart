import 'package:smithy/smithy.dart';

class AwsJson10Protocol<Input extends JsonPayload, Output> extends HttpProtocol<
    Map<String, Object?>, Map<String, Object?>, Input, Output> {
  const AwsJson10Protocol({
    required this.responseConstructor,
  });

  @override
  String get contentType => 'application/x-amz-json-1.0';

  @override
  final JsonConstructor<Output> responseConstructor;

  @override
  final serializer =
      const JsonSerializer<Map<String, Object?>, Map<String, Object?>>();
}
