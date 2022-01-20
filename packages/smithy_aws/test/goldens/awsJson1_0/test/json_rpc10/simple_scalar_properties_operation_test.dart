// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.simple_scalar_properties_test;

import 'package:aws_json1_0/src/json_rpc10/model/simple_scalar_properties_input.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/operation/simple_scalar_properties.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCaseJson: {
        'id': 'AwsJson10SupportsNaNFloatInputs',
        'documentation': 'Supports handling NaN float values.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body': '{\n    "floatValue": "NaN",\n    "doubleValue": "NaN"\n}',
        'bodyMediaType': 'application/json',
        'params': {'floatValue': 'NaN', 'doubleValue': 'NaN'},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.SimpleScalarProperties'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': null,
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      },
      inputSerializer: const _SimpleScalarPropertiesInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCaseJson: {
        'id': 'AwsJson10SupportsInfinityFloatInputs',
        'documentation': 'Supports handling Infinity float values.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body':
            '{\n    "floatValue": "Infinity",\n    "doubleValue": "Infinity"\n}',
        'bodyMediaType': 'application/json',
        'params': {'floatValue': 'Infinity', 'doubleValue': 'Infinity'},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.SimpleScalarProperties'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': null,
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      },
      inputSerializer: const _SimpleScalarPropertiesInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.SimpleScalarPropertiesOperation(),
      testCaseJson: {
        'id': 'AwsJson10SupportsNegativeInfinityFloatInputs',
        'documentation': 'Supports handling -Infinity float values.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body':
            '{\n    "floatValue": "-Infinity",\n    "doubleValue": "-Infinity"\n}',
        'bodyMediaType': 'application/json',
        'params': {'floatValue': '-Infinity', 'doubleValue': '-Infinity'},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.SimpleScalarProperties'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': null,
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      },
      inputSerializer: const _SimpleScalarPropertiesInputAwsJson10Serializer());
}

class _SimpleScalarPropertiesInputAwsJson10Serializer
    extends _i3.SmithySerializer<_i4.SimpleScalarPropertiesInput> {
  const _SimpleScalarPropertiesInputAwsJson10Serializer()
      : super('SimpleScalarPropertiesInput');

  @override
  Iterable<Type> get types => const [
        _i4.SimpleScalarPropertiesInput,
        _i4.SimpleScalarPropertiesInputPayload
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i4.SimpleScalarPropertiesInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.SimpleScalarPropertiesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
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
