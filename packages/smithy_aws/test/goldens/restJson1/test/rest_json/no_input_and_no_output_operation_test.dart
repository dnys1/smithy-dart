// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.no_input_and_no_output_test;

import 'package:rest_json1/src/rest_json/operation/no_input_and_no_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonNoInputAndNoOutput (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.NoInputAndNoOutputOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonNoInputAndNoOutput',
            documentation:
                'No input serializes no payload. When clients do not need to\nserialize any data in the payload, they should omit a payload\naltogether.',
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
            uri: '/NoInputAndNoOutput',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const []);
  });
  _i1.test('RestJsonNoInputAndNoOutput (response)', () async {
    await _i2.httpResponseTest(
        operation: _i3.NoInputAndNoOutputOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonNoInputAndNoOutput',
            documentation:
                'When an operation does not define output, the service will respond\nwith an empty payload, and may optionally include the content-type\nheader.',
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
            code: 200),
        outputSerializers: const []);
  });
}
