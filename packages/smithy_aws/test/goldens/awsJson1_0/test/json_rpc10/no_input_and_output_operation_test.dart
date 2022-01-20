// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.no_input_and_output_test;

import 'package:aws_json1_0/src/json_rpc10/operation/no_input_and_output.dart'
    as _i2;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.NoInputAndOutputOperation(),
      testCaseJson: {
        'id': 'AwsJson10NoInputAndOutput',
        'documentation':
            'A client should always send and empty JSON object payload.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body': '{}',
        'bodyMediaType': 'application/json',
        'params': {},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.NoInputAndOutput'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': null,
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      });
}
