// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.no_input_and_output_test;

import 'package:aws_json1_0/src/json_rpc10/model/no_input_and_output_output.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/operation/no_input_and_output.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.NoInputAndOutputOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10NoInputAndOutput',
          documentation:
              'A client should always send and empty JSON object payload.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.NoInputAndOutput'
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
          requireQueryParams: []));
  _i1.httpResponseTest(
      operation: _i2.NoInputAndOutputOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10NoInputAndOutput',
          documentation:
              'Empty output always serializes an empty object payload.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
          appliesTo: null,
          code: 200),
      outputSerializer: const _NoInputAndOutputOutputAwsJson10Serializer());
}

class _NoInputAndOutputOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i4.NoInputAndOutputOutput> {
  const _NoInputAndOutputOutputAwsJson10Serializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types =>
      const [_i4.NoInputAndOutputOutput, _i4.NoInputAndOutputOutputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i4.NoInputAndOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i4.NoInputAndOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}