// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_request_with_float_labels_test;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/http_request_with_float_labels_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/http_request_with_float_labels.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonSupportsNaNFloatLabels (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithFloatLabelsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonSupportsNaNFloatLabels',
            documentation: 'Supports handling NaN float label values.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {'float': 'NaN', 'double': 'NaN'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'GET',
            uri: '/FloatHttpLabels/NaN/NaN',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _HttpRequestWithFloatLabelsInputRestJson1Serializer());
  });
  _i1.test('RestJsonSupportsInfinityFloatLabels (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithFloatLabelsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonSupportsInfinityFloatLabels',
            documentation: 'Supports handling Infinity float label values.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {'float': 'Infinity', 'double': 'Infinity'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'GET',
            uri: '/FloatHttpLabels/Infinity/Infinity',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _HttpRequestWithFloatLabelsInputRestJson1Serializer());
  });
  _i1.test('RestJsonSupportsNegativeInfinityFloatLabels (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithFloatLabelsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonSupportsNegativeInfinityFloatLabels',
            documentation: 'Supports handling -Infinity float label values.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '',
            bodyMediaType: null,
            params: {'float': '-Infinity', 'double': '-Infinity'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'GET',
            uri: '/FloatHttpLabels/-Infinity/-Infinity',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _HttpRequestWithFloatLabelsInputRestJson1Serializer());
  });
}

class _HttpRequestWithFloatLabelsInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpRequestWithFloatLabelsInput> {
  const _HttpRequestWithFloatLabelsInputRestJson1Serializer()
      : super('HttpRequestWithFloatLabelsInput');

  @override
  Iterable<Type> get types => const [_i5.HttpRequestWithFloatLabelsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpRequestWithFloatLabelsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpRequestWithFloatLabelsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'double':
          result.double$ = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
          break;
        case 'float':
          result.float = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
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
