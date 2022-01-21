// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_timestamps_test;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/json_timestamps_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/json_timestamps.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonJsonTimestamps (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonJsonTimestamps',
            documentation: 'Tests how normal timestamps are serialized',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "normal": 1398796238\n}',
            bodyMediaType: 'application/json',
            params: {'normal': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonTimestamps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestampsWithDateTimeFormat (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonJsonTimestampsWithDateTimeFormat',
            documentation:
                'Ensures that the timestampFormat of date-time works like normal timestamps',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "dateTime": "2014-04-29T18:30:38Z"\n}',
            bodyMediaType: 'application/json',
            params: {'dateTime': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonTimestamps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestampsWithEpochSecondsFormat (restJson1)',
      () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonJsonTimestampsWithEpochSecondsFormat',
            documentation:
                'Ensures that the timestampFormat of epoch-seconds works',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "epochSeconds": 1398796238\n}',
            bodyMediaType: 'application/json',
            params: {'epochSeconds': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonTimestamps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestampsWithHttpDateFormat (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonJsonTimestampsWithHttpDateFormat',
            documentation:
                'Ensures that the timestampFormat of http-date works',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "httpDate": "Tue, 29 Apr 2014 18:30:38 GMT"\n}',
            bodyMediaType: 'application/json',
            params: {'httpDate': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonTimestamps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestamps (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonJsonTimestamps',
            documentation: 'Tests how normal timestamps are serialized',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "normal": 1398796238\n}',
            bodyMediaType: 'application/json',
            params: {'normal': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestampsWithDateTimeFormat (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonJsonTimestampsWithDateTimeFormat',
            documentation:
                'Ensures that the timestampFormat of date-time works like normal timestamps',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "dateTime": "2014-04-29T18:30:38Z"\n}',
            bodyMediaType: 'application/json',
            params: {'dateTime': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestampsWithEpochSecondsFormat (restJson1)',
      () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonJsonTimestampsWithEpochSecondsFormat',
            documentation:
                'Ensures that the timestampFormat of epoch-seconds works',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "epochSeconds": 1398796238\n}',
            bodyMediaType: 'application/json',
            params: {'epochSeconds': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _JsonTimestampsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonJsonTimestampsWithHttpDateFormat (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonJsonTimestampsWithHttpDateFormat',
            documentation:
                'Ensures that the timestampFormat of http-date works',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "httpDate": "Tue, 29 Apr 2014 18:30:38 GMT"\n}',
            bodyMediaType: 'application/json',
            params: {'httpDate': 1398796238},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _JsonTimestampsInputOutputRestJson1Serializer());
  });
}

class _JsonTimestampsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonTimestampsInputOutput> {
  const _JsonTimestampsInputOutputRestJson1Serializer()
      : super('JsonTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonTimestampsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.JsonTimestampsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.JsonTimestampsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'dateTime':
          if (value != null) {
            result.dateTime = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'epochSeconds':
          if (value != null) {
            result.epochSeconds = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'httpDate':
          if (value != null) {
            result.httpDate = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'normal':
          if (value != null) {
            result.normal = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
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
