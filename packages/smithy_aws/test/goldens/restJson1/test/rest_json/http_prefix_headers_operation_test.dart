// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_prefix_headers_test;

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_output.dart'
    as _i7;
import 'package:rest_json1/src/rest_json/operation/http_prefix_headers.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonHttpPrefixHeadersArePresent (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HttpPrefixHeadersOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonHttpPrefixHeadersArePresent',
            documentation: 'Adds headers by prefix',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {
              'foo': 'Foo',
              'fooMap': {'Abc': 'Abc value', 'Def': 'Def value'}
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Foo': 'Foo',
              'X-Foo-Abc': 'Abc value',
              'X-Foo-Def': 'Def value'
            },
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'GET',
            uri: '/HttpPrefixHeaders',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _HttpPrefixHeadersInputRestJson1Serializer());
  });
  _i1.test('RestJsonHttpPrefixHeadersAreNotPresent (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HttpPrefixHeadersOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonHttpPrefixHeadersAreNotPresent',
            documentation:
                'No prefix headers are serialized because the value is empty',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {'foo': 'Foo', 'fooMap': {}},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Foo': 'Foo'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'GET',
            uri: '/HttpPrefixHeaders',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _HttpPrefixHeadersInputRestJson1Serializer());
  });
  _i1.test('RestJsonHttpPrefixHeadersArePresent (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.HttpPrefixHeadersOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonHttpPrefixHeadersArePresent',
            documentation: 'Adds headers by prefix',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: null,
            bodyMediaType: null,
            params: {
              'foo': 'Foo',
              'fooMap': {'Abc': 'Abc value', 'Def': 'Def value'}
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Foo': 'Foo',
              'X-Foo-Abc': 'Abc value',
              'X-Foo-Def': 'Def value'
            },
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer: const _HttpPrefixHeadersOutputRestJson1Serializer());
  });
}

class _HttpPrefixHeadersInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.HttpPrefixHeadersInput> {
  const _HttpPrefixHeadersInputRestJson1Serializer()
      : super('HttpPrefixHeadersInput');

  @override
  Iterable<Type> get types => const [_i5.HttpPrefixHeadersInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpPrefixHeadersInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpPrefixHeadersInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'fooMap':
          if (value != null) {
            result.fooMap.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(String)]))
                as _i6.BuiltMap<String, String>));
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

class _HttpPrefixHeadersOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.HttpPrefixHeadersOutput> {
  const _HttpPrefixHeadersOutputRestJson1Serializer()
      : super('HttpPrefixHeadersOutput');

  @override
  Iterable<Type> get types => const [_i7.HttpPrefixHeadersOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i7.HttpPrefixHeadersOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i7.HttpPrefixHeadersOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'fooMap':
          if (value != null) {
            result.fooMap.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(String)]))
                as _i6.BuiltMap<String, String>));
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
