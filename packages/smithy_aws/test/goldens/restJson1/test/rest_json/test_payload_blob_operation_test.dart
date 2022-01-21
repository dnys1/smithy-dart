// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.test_payload_blob_test;

import 'dart:typed_data' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/test_payload_blob_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/test_payload_blob.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonHttpWithEmptyBlobPayload (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.TestPayloadBlobOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonHttpWithEmptyBlobPayload',
            documentation: 'Serializes a payload targeting an empty blob',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: 'application/octet-stream',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/octet-stream'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/blob_payload',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _TestPayloadBlobInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonTestPayloadBlob (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.TestPayloadBlobOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonTestPayloadBlob',
            documentation: 'Serializes a payload targeting a blob',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '1234',
            bodyMediaType: 'image/jpg',
            params: {'contentType': 'image/jpg', 'data': '1234'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'image/jpg'},
            forbidHeaders: [],
            requireHeaders: ['Content-Length'],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/blob_payload',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _TestPayloadBlobInputOutputRestJson1Serializer());
  });
}

class _TestPayloadBlobInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.TestPayloadBlobInputOutput> {
  const _TestPayloadBlobInputOutputRestJson1Serializer()
      : super('TestPayloadBlobInputOutput');

  @override
  Iterable<Type> get types => const [_i5.TestPayloadBlobInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.TestPayloadBlobInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.TestPayloadBlobInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contentType':
          if (value != null) {
            result.contentType = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'data':
          if (value != null) {
            result.data = (serializers.deserialize(value,
                specifiedType: const FullType(_i6.Uint8List)) as _i6.Uint8List);
          }
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
