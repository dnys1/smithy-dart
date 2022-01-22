// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_payload_traits_with_media_type_test;

import 'dart:typed_data' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/http_payload_traits_with_media_type_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/http_payload_traits_with_media_type.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpPayloadTraitsWithMediaTypeWithBlob (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpPayloadTraitsWithMediaTypeOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpPayloadTraitsWithMediaTypeWithBlob',
              documentation:
                  'Serializes a blob in the HTTP payload with a content-type',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: 'blobby blob blob',
              bodyMediaType: 'application/octet-stream',
              params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Foo': 'Foo', 'Content-Type': 'text/plain'},
              forbidHeaders: [],
              requireHeaders: ['Content-Length'],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/HttpPayloadTraitsWithMediaType',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonHttpPayloadTraitsWithMediaTypeWithBlob (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.HttpPayloadTraitsWithMediaTypeOperation(),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonHttpPayloadTraitsWithMediaTypeWithBlob',
              documentation:
                  'Serializes a blob in the HTTP payload with a content-type',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: 'blobby blob blob',
              bodyMediaType: 'application/octet-stream',
              params: {'foo': 'Foo', 'blob': 'blobby blob blob'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Foo': 'Foo', 'Content-Type': 'text/plain'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
          ]);
    },
  );
}

class _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpPayloadTraitsWithMediaTypeInputOutput> {
  const _HttpPayloadTraitsWithMediaTypeInputOutputRestJson1Serializer()
      : super('HttpPayloadTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.HttpPayloadTraitsWithMediaTypeInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpPayloadTraitsWithMediaTypeInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpPayloadTraitsWithMediaTypeInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i6.Uint8List)) as _i6.Uint8List);
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
