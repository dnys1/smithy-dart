// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.endpoint_operation_test;

import 'package:aws_json1_0/src/json_rpc10/operation/endpoint_operation.dart'
    as _i2;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(operation: _i2.EndpointOperation(), testCaseJson: {
    'id': 'AwsJson10EndpointTrait',
    'documentation':
        'Operations can prepend to the given host if they define the\nendpoint trait.',
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
    'appliesTo': null,
    'method': 'POST',
    'uri': '/',
    'host': 'example.com',
    'resolvedHost': 'foo.example.com',
    'queryParams': [],
    'forbidQueryParams': [],
    'requireQueryParams': []
  });
}
