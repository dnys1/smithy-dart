import 'package:http_binding_map_model/src/test/model/map_input_request.dart';
import 'package:http_binding_map_model/src/test/operation/map_input_operation.dart';
import 'package:smithy/smithy.dart';

class TestClient {
  const TestClient();

  Future<void> mapInput(MapInputRequest request, [HttpClient? client]) async {
    await const MapInputOperation().run(request, client: client);
  }
}
