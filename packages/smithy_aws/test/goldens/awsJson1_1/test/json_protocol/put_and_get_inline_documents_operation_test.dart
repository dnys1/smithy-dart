// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.put_and_get_inline_documents_test;

import 'package:aws_json1_1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/put_and_get_inline_documents.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.PutAndGetInlineDocumentsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'PutAndGetInlineDocumentsInput',
          documentation: 'Serializes inline documents in a JSON request.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "inlineDocument": {"foo": "bar"}\n}',
          bodyMediaType: 'application/json',
          params: {
            'inlineDocument': {'foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: []),
      inputSerializer:
          const _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.PutAndGetInlineDocumentsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'PutAndGetInlineDocumentsInput',
          documentation: 'Serializes inline documents in a JSON response.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "inlineDocument": {"foo": "bar"}\n}',
          bodyMediaType: 'application/json',
          params: {
            'inlineDocument': {'foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer:
          const _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer());
}

class _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<_i4.PutAndGetInlineDocumentsInputOutput> {
  const _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
      : super('PutAndGetInlineDocumentsInputOutput');

  @override
  Iterable<Type> get types => const [
        _i4.PutAndGetInlineDocumentsInputOutput,
        _i4.PutAndGetInlineDocumentsInputOutputPayload
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i4.PutAndGetInlineDocumentsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.PutAndGetInlineDocumentsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'inlineDocument':
          result.inlineDocument = (serializers.deserialize(value,
              specifiedType: const FullType(Object)) as Object?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
