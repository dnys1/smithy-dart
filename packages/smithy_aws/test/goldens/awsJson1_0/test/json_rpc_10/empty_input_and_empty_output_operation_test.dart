// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.operation.empty_input_and_empty_output_test;

import 'package:aws_json1_0/src/json_rpc_10/model/empty_input_and_empty_output_input.dart'
    as _i5;
import 'package:aws_json1_0/src/json_rpc_10/model/empty_input_and_empty_output_output.dart'
    as _i6;
import 'package:aws_json1_0/src/json_rpc_10/operation/empty_input_and_empty_output.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10EmptyInputAndEmptyOutput (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.EmptyInputAndEmptyOutputOperation(
              baseUri: Uri.parse('https://example.com'), region: 'us-east-1'),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson10EmptyInputAndEmptyOutput',
              documentation:
                  'Clients must always send an empty object if input is modeled.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '{}',
              bodyMediaType: 'application/json',
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/x-amz-json-1.0',
                'X-Amz-Target': 'JsonRpc10.EmptyInputAndEmptyOutput'
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
          inputSerializers: const [
            _EmptyInputAndEmptyOutputInputAwsJson10Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson10EmptyInputAndEmptyOutputSendJsonObject (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.EmptyInputAndEmptyOutputOperation(
              baseUri: Uri.parse('https://example.com'), region: 'us-east-1'),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson10EmptyInputAndEmptyOutputSendJsonObject',
              documentation:
                  'A service will always return a JSON object for operations with modeled output.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
          outputSerializers: const [
            _EmptyInputAndEmptyOutputOutputAwsJson10Serializer()
          ]);
    },
  );
}

class _EmptyInputAndEmptyOutputInputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i5.EmptyInputAndEmptyOutputInput> {
  const _EmptyInputAndEmptyOutputInputAwsJson10Serializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [_i5.EmptyInputAndEmptyOutputInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i5.EmptyInputAndEmptyOutputInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i5.EmptyInputAndEmptyOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class _EmptyInputAndEmptyOutputOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<_i6.EmptyInputAndEmptyOutputOutput> {
  const _EmptyInputAndEmptyOutputOutputAwsJson10Serializer()
      : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [_i6.EmptyInputAndEmptyOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i6.EmptyInputAndEmptyOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i6.EmptyInputAndEmptyOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
