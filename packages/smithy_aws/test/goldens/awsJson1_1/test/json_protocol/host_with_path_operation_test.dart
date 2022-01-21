// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.host_with_path_operation_test;

import 'package:aws_json1_1/src/json_protocol/operation/host_with_path_operation.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.HostWithPathOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11HostWithPath',
          documentation: 'Custom endpoints supplied by users can have paths',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          appliesTo: _i1.AppliesTo.client,
          method: 'POST',
          uri: '/custom/',
          host: 'example.com/custom',
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: []));
}
