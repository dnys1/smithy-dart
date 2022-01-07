import 'package:http_binding_map_model/src/test/model/map_input_request.dart';
import 'package:http_binding_map_model/src/test/operation/map_input_operation.dart';

class TestServiceClient {
  const TestServiceClient({
    required this.baseUri,
  });

  final Uri baseUri;

  static late final _mapInputOperation = MapInputOperation();
  Future<void> mapInput(MapInputRequest request) async {
    await _mapInputOperation.run(
      request,
      baseUri: baseUri,
    );
  }
}
