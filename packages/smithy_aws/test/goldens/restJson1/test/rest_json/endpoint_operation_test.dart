// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.endpoint_operation_test;

import 'package:rest_json1/src/rest_json/operation/endpoint_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonEndpointTrait (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.EndpointOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonEndpointTrait',
            documentation:
                'Operations can prepend to the given host if they define the\nendpoint trait.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/EndpointOperation',
            host: 'example.com',
            resolvedHost: 'foo.example.com',
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []));
  });
}
