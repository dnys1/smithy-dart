// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.simple_scalar_properties_test;

import 'package:aws_json1_1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/simple_scalar_properties.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
          bodyMediaType: 'application/json',
          params: {'floatValue': 'NaN', 'doubleValue': 'NaN'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.SimpleScalarProperties'
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
      inputSerializer:
          const _SimpleScalarPropertiesInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.SimpleScalarProperties'
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
      inputSerializer:
          const _SimpleScalarPropertiesInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.SimpleScalarProperties'
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
      inputSerializer:
          const _SimpleScalarPropertiesInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11SupportsNaNFloatInputs',
          documentation: 'Supports handling NaN float values.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
          bodyMediaType: 'application/json',
          params: {'floatValue': 'NaN', 'doubleValue': 'NaN'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer:
          const _SimpleScalarPropertiesInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11SupportsInfinityFloatInputs',
          documentation: 'Supports handling Infinity float values.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer:
          const _SimpleScalarPropertiesInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11SupportsNegativeInfinityFloatInputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
          bodyMediaType: 'application/json',
          params: {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer:
          const _SimpleScalarPropertiesInputOutputAwsJson11Serializer());
}

class _SimpleScalarPropertiesInputOutputAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<_i4.SimpleScalarPropertiesInputOutput> {
  const _SimpleScalarPropertiesInputOutputAwsJson11Serializer()
      : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [
        _i4.SimpleScalarPropertiesInputOutput,
        _i4.SimpleScalarPropertiesInputOutputPayload
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i4.SimpleScalarPropertiesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.SimpleScalarPropertiesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?);
          break;
        case 'floatValue':
          result.floatValue = (serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?);
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