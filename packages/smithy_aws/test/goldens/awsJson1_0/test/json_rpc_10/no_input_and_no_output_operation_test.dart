// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.test.no_input_and_no_output_operation_test;

import 'package:aws_json1_0/src/json_rpc_10/operation/no_input_and_no_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10MustAlwaysSendEmptyJsonPayload (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.NoInputAndNoOutputOperation(
              baseUri: Uri.parse('https://example.com'), region: 'us-east-1'),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson10MustAlwaysSendEmptyJsonPayload',
              documentation:
                  'Clients must always send an empty JSON object payload for\noperations with no input (that is, `{}`). While AWS service\nimplementations support requests with no payload or requests\nthat send `{}`, always sending `{}` from the client is\npreferred for forward compatibility in case input is ever\nadded to an operation.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/x-amz-json-1.0',
                'X-Amz-Target': 'JsonRpc10.NoInputAndNoOutput'
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
  _i1.test(
    'AwsJson10HandlesEmptyOutputShape (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NoInputAndNoOutputOperation(
              baseUri: Uri.parse('https://example.com'), region: 'us-east-1'),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson10HandlesEmptyOutputShape',
              documentation:
                  'When no output is defined, the service is expected to return\nan empty payload, however, client must ignore a JSON payload\nif one is returned. This ensures that if output is added later,\nthen it will not break the client.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.0'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const []);
    },
  );
  _i1.test(
    'AwsJson10HandlesUnexpectedJsonOutput (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NoInputAndNoOutputOperation(
              baseUri: Uri.parse('https://example.com'), region: 'us-east-1'),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson10HandlesUnexpectedJsonOutput',
              documentation:
                  'This client-only test builds on handles_empty_output_shape,\nby including unexpected fields in the JSON. A client\nneeds to ignore JSON output that is empty or that contains\nJSON object data.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '{\n    "foo": true\n}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.0'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const []);
    },
  );
  _i1.test(
    'AwsJson10ServiceRespondsWithNoPayload (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NoInputAndNoOutputOperation(
              baseUri: Uri.parse('https://example.com'), region: 'us-east-1'),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson10ServiceRespondsWithNoPayload',
              documentation:
                  'When no output is defined, the service is expected to return\nan empty payload. Despite the lack of a payload, the service\nis expected to always send a Content-Type header. Clients must\nhandle cases where a service returns a JSON object and where\na service returns no JSON at all.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/x-amz-json-1.0'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const []);
    },
  );
}
