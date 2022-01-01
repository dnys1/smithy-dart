import 'package:smithy/smithy.dart';

class RestJson1Protocol<Input extends JsonPayload, Output> extends HttpProtocol<
    Map<String, Object?>, Map<String, Object?>, Input, Output> {
  const RestJson1Protocol({
    required this.responseConstructor,
  });

  @override
  String get contentType => 'application/json';

  @override
  final JsonConstructor<Output> responseConstructor;

  @override
  final serializer =
      const JsonSerializer<Map<String, Object?>, Map<String, Object?>>();
}
