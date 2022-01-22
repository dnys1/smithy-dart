// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.host_with_path_operation_test;

import 'package:rest_json1/src/rest_json/operation/host_with_path_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonHostWithPath (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HostWithPathOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonHostWithPath',
            documentation: 'Custom endpoints supplied by users can have paths',
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
            appliesTo: _i2.AppliesTo.client,
            method: 'GET',
            uri: '/custom/HostWithPathOperation',
            host: 'example.com/custom',
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const []);
  });
}
