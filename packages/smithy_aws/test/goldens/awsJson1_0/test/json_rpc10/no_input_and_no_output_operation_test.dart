// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.no_input_and_no_output_test;

import 'package:aws_json1_0/src/json_rpc10/operation/no_input_and_no_output.dart'
    as _i2;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.NoInputAndNoOutputOperation(),
      testCaseJson: {
        'id': 'AwsJson10MustAlwaysSendEmptyJsonPayload',
        'documentation':
            'Clients must always send an empty JSON object payload for\noperations with no input (that is, `{}`). While AWS service\nimplementations support requests with no payload or requests\nthat send `{}`, always sending `{}` from the client is\npreferred for forward compatibility in case input is ever\nadded to an operation.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body': '{}',
        'bodyMediaType': 'application/json',
        'params': {},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.NoInputAndNoOutput'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': null,
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      });
  _i1.httpRequestTest(
      operation: _i2.NoInputAndNoOutputOperation(),
      testCaseJson: {
        'id': 'AwsJson10ServiceSupportsNoPayloadForNoInput',
        'documentation':
            'Service implementations must support no payload or an empty\nobject payload for operations that define no input. However,\ndespite the lack of a payload, a Content-Type header is still\nrequired in order for the service to properly detect the\nprotocol.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body': '',
        'bodyMediaType': null,
        'params': {},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.NoInputAndNoOutput'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': 'server',
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      });
}
