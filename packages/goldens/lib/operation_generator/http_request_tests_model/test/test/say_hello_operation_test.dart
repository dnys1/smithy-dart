// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.operation.say_hello;

import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(operation: SayHelloOperation(), testCaseJson: {
    'id': 'say_hello',
    'documentation': null,
    'protocol': 'aws.protocols#awsJson1_1',
    'authScheme': null,
    'body': '{"name": "Teddy"}',
    'bodyMediaType': 'application/json',
    'params': {
      'hostLabel': 'foo',
      'greeting': 'Hi',
      'name': 'Teddy',
      'query': 'Hello there'
    },
    'vendorParamsShape': null,
    'vendorParams': {},
    'headers': {'X-Greeting': 'Hi'},
    'forbidHeaders': [],
    'requireHeaders': [],
    'tags': [],
    'appliesTo': null,
    'method': 'POST',
    'uri': '/',
    'host': 'example.com',
    'resolvedHost': 'foo.prefix.example.com',
    'queryParams': ['Hi=Hello%20there'],
    'forbidQueryParams': [],
    'requireQueryParams': []
  });
}
