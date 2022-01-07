import 'package:http_binding_map_model/src/test/operation/map_input_operation.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:smithy_test/smithy_test.dart';

void main() {
  httpRequestTest(
    operation: MapInputOperation(),
    testCaseJson: {},
  );
}
