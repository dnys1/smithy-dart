import 'package:generic_json/src/generic_json/operation/unit_input_and_output_operation.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_test/smithy_test.dart';

void main() {
  test('UnitInputAndOutput (request)', () async {
    await httpRequestTest(
      operation: UnitInputAndOutputOperation(
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: HttpRequestTestCase(
        id: 'unit_input_and_output',
        protocol: GenericJsonProtocolDefinitionTrait.id,
        method: 'POST',
        uri: '/UnitInputAndOutput',
        body: '{}',
      ),
    );
  });
}
