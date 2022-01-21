// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.null_operation_test;

import 'package:aws_json1_1/src/json_protocol/model/null_operation_input_output.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/null_operation.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.NullOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11StructuresDontSerializeNullValues',
          documentation: 'Null structure values are dropped',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {'string': null},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: []),
      inputSerializer: const _NullOperationInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.NullOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11MapsSerializeNullValues',
          documentation: 'Serializes null values in maps',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "sparseStringMap": {\n        "foo": null\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringMap': {'foo': null}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
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
      inputSerializer: const _NullOperationInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.NullOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11ListsSerializeNull',
          documentation: 'Serializes null values in lists',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "sparseStringList": [\n        null\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringList': [null]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
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
      inputSerializer: const _NullOperationInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.NullOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11StructuresDontDeserializeNullValues',
          documentation: 'Null structure values are dropped',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "string": null\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 200),
      outputSerializer: const _NullOperationInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.NullOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11MapsDeserializeNullValues',
          documentation: 'Deserializes null values in maps',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "sparseStringMap": {\n        "foo": null\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringMap': {'foo': null}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _NullOperationInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.NullOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11ListsDeserializeNull',
          documentation: 'Deserializes null values in lists',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "sparseStringList": [\n        null\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringList': [null]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _NullOperationInputOutputAwsJson11Serializer());
}

class _NullOperationInputOutputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<_i4.NullOperationInputOutput> {
  const _NullOperationInputOutputAwsJson11Serializer()
      : super('NullOperationInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i4.NullOperationInputOutput, _i4.NullOperationInputOutputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i4.NullOperationInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.NullOperationInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'sparseStringList':
          result.sparseStringList.replace((serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i5.BuiltList, [FullType(String)]))
              as _i5.BuiltList<String>));
          break;
        case 'sparseStringMap':
          result.sparseStringMap.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i5.BuiltMap, [FullType(String), FullType(String)]))
              as _i5.BuiltMap<String, String>));
          break;
        case 'string':
          result.string = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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
