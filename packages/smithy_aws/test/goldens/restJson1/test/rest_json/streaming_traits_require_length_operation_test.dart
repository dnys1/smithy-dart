// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.streaming_traits_require_length_test;

import 'dart:async' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/streaming_traits_require_length_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/streaming_traits_require_length.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonStreamingTraitsRequireLengthWithBlob (restJson1)',
      () async {
    await _i2.httpRequestTest(
        operation: _i3.StreamingTraitsRequireLengthOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonStreamingTraitsRequireLengthWithBlob',
            documentation:
                'Serializes a blob in the HTTP payload with a required length',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: 'blobby blob blob',
            bodyMediaType: 'application/octet-stream',
            params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Foo': 'Foo',
              'Content-Type': 'application/octet-stream'
            },
            forbidHeaders: [],
            requireHeaders: ['Content-Length'],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/StreamingTraitsRequireLength',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _StreamingTraitsRequireLengthInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonStreamingTraitsRequireLengthWithNoBlobBody (restJson1)',
      () async {
    await _i2.httpRequestTest(
        operation: _i3.StreamingTraitsRequireLengthOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonStreamingTraitsRequireLengthWithNoBlobBody',
            documentation: 'Serializes an empty blob in the HTTP payload',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: 'application/octet-stream',
            params: {'foo': 'Foo'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Foo': 'Foo'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/StreamingTraitsRequireLength',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _StreamingTraitsRequireLengthInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonStreamingTraitsRequireLengthWithBlob (restJson1)',
      () async {
    await _i2.httpResponseTest(
        operation: _i3.StreamingTraitsRequireLengthOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonStreamingTraitsRequireLengthWithBlob',
            documentation:
                'Serializes a blob in the HTTP payload with a required length',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: 'blobby blob blob',
            bodyMediaType: 'application/octet-stream',
            params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Foo': 'Foo',
              'Content-Type': 'application/octet-stream'
            },
            forbidHeaders: [],
            requireHeaders: ['Content-Length'],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _StreamingTraitsRequireLengthInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonStreamingTraitsRequireLengthWithNoBlobBody (restJson1)',
      () async {
    await _i2.httpResponseTest(
        operation: _i3.StreamingTraitsRequireLengthOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonStreamingTraitsRequireLengthWithNoBlobBody',
            documentation: 'Serializes an empty blob in the HTTP payload',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: 'application/octet-stream',
            params: {'foo': 'Foo'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Foo': 'Foo'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _StreamingTraitsRequireLengthInputOutputRestJson1Serializer());
  });
}

class _StreamingTraitsRequireLengthInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.StreamingTraitsRequireLengthInputOutput> {
  const _StreamingTraitsRequireLengthInputOutputRestJson1Serializer()
      : super('StreamingTraitsRequireLengthInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.StreamingTraitsRequireLengthInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.StreamingTraitsRequireLengthInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.StreamingTraitsRequireLengthInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i6.Stream, [
                  FullType(List, [FullType(int)])
                ])) as _i6.Stream<List<int>>);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
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
