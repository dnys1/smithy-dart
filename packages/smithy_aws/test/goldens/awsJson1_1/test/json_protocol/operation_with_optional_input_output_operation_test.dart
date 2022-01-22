// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.operation_with_optional_input_output_test;

import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i5;
import 'package:aws_json1_1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/operation/operation_with_optional_input_output.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('can_call_operation_with_no_input_or_output (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.OperationWithOptionalInputOutputOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'can_call_operation_with_no_input_or_output',
            documentation: 'Can call operations with no input or output',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'Content-Type': 'application/x-amz-json-1.1',
              'X-Amz-Target': 'JsonProtocol.OperationWithOptionalInputOutput'
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
        inputSerializers: const [
          _OperationWithOptionalInputOutputInputAwsJson11Serializer()
        ]);
  });
  _i1.test('can_call_operation_with_optional_input (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.OperationWithOptionalInputOutputOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'can_call_operation_with_optional_input',
            documentation: 'Can invoke operations with optional input',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{"Value":"Hi"}',
            bodyMediaType: 'application/json',
            params: {'Value': 'Hi'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'Content-Type': 'application/x-amz-json-1.1',
              'X-Amz-Target': 'JsonProtocol.OperationWithOptionalInputOutput'
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
        inputSerializers: const [
          _OperationWithOptionalInputOutputInputAwsJson11Serializer()
        ]);
  });
}

class _OperationWithOptionalInputOutputInputAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<_i5.OperationWithOptionalInputOutputInput> {
  const _OperationWithOptionalInputOutputInputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputInput');

  @override
  Iterable<Type> get types => const [_i5.OperationWithOptionalInputOutputInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i5.OperationWithOptionalInputOutputInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.OperationWithOptionalInputOutputInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(value,
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

class _OperationWithOptionalInputOutputOutputAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<_i6.OperationWithOptionalInputOutputOutput> {
  const _OperationWithOptionalInputOutputOutputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputOutput');

  @override
  Iterable<Type> get types =>
      const [_i6.OperationWithOptionalInputOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i6.OperationWithOptionalInputOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.OperationWithOptionalInputOutputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(value,
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
