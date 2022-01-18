// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.operation.say_hello_test;

import 'package:http_request_tests_model/src/test/model/say_hello_input.dart'
    as _i3;
import 'package:http_request_tests_model/src/test/operation/say_hello.dart'
    as _i2;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.SayHelloOperation(),
      testCaseJson: {
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
      },
      input: _i3.SayHelloInput((b) => b
        ..hostLabel = 'foo'
        ..greeting = 'Hi'
        ..name = 'Teddy'
        ..query = 'Hello there'));
}
