// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_blobs_test;

import 'dart:typed_data' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/json_blobs_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/json_blobs.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonJsonBlobs (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonBlobsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonJsonBlobs',
            documentation: 'Blobs are base64 encoded',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "data": "dmFsdWU="\n}',
            bodyMediaType: 'application/json',
            params: {'data': 'value'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonBlobs',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonBlobsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonBlobs (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonBlobsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonJsonBlobs',
            documentation: 'Blobs are base64 encoded',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "data": "dmFsdWU="\n}',
            bodyMediaType: 'application/json',
            params: {'data': 'value'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer: const _JsonBlobsInputOutputRestJson1Serializer());
  });
}

class _JsonBlobsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonBlobsInputOutput> {
  const _JsonBlobsInputOutputRestJson1Serializer()
      : super('JsonBlobsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonBlobsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.JsonBlobsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.JsonBlobsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
