// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.host_with_path_operation_test;

import 'package:aws_json1_0/src/json_rpc10/operation/host_with_path_operation.dart'
    as _i2;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(operation: _i2.HostWithPathOperation(), testCaseJson: {
    'id': 'AwsJson10HostWithPath',
    'documentation': 'Custom endpoints supplied by users can have paths',
    'protocol': 'aws.protocols#awsJson1_0',
    'authScheme': null,
    'body': '{}',
    'bodyMediaType': null,
    'params': {},
    'vendorParamsShape': null,
    'vendorParams': {},
    'headers': {},
    'forbidHeaders': [],
    'requireHeaders': [],
    'tags': [],
    'appliesTo': 'client',
    'method': 'POST',
    'uri': '/custom/',
    'host': 'example.com/custom',
    'resolvedHost': null,
    'queryParams': [],
    'forbidQueryParams': [],
    'requireQueryParams': []
  });
}
