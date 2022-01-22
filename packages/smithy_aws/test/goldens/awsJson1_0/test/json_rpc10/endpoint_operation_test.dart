// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.endpoint_operation_test;

import 'package:aws_json1_0/src/json_rpc10/operation/endpoint_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10EndpointTrait (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.EndpointOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson10EndpointTrait',
              documentation:
                  'Operations can prepend to the given host if they define the\nendpoint trait.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '{}',
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
              uri: '/',
              host: 'example.com',
              resolvedHost: 'foo.example.com',
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
}
