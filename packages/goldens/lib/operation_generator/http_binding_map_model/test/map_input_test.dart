import 'package:http_binding_map_model/src/test/model/map_input_request.dart';
import 'package:http_binding_map_model/src/test/test_client.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

void main() {
  test('MapInputOperation', () async {
    final mockServer = MockClient((req) async {
      return Response('', 200);
    });
    final client = HttpClient.v1(baseClient: mockServer);
    await const TestClient().mapInput(
      MapInputRequest((r) => r..mapOfLists.add('key', 123)),
      client,
    );
  });
}
