// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.null_operation_test;

import 'package:aws_json1_1/src/json_protocol/model/null_operation_input_output.dart'
    as _i5;
import 'package:aws_json1_1/src/json_protocol/operation/null_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11StructuresDontSerializeNullValues (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.NullOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11StructuresDontSerializeNullValues',
              documentation: 'Null structure values are dropped',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
              appliesTo: _i2.AppliesTo.client,
              method: 'POST',
              uri: '/',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            _NullOperationInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11MapsSerializeNullValues (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.NullOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11MapsSerializeNullValues',
              documentation: 'Serializes null values in maps',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "sparseStringMap": {\n        "foo": null\n    }\n}',
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
          inputSerializers: const [
            _NullOperationInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11ListsSerializeNull (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.NullOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11ListsSerializeNull',
              documentation: 'Serializes null values in lists',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          inputSerializers: const [
            _NullOperationInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11StructuresDontDeserializeNullValues (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NullOperation(),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11StructuresDontDeserializeNullValues',
              documentation: 'Null structure values are dropped',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const [
            _NullOperationInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11MapsDeserializeNullValues (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NullOperation(),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11MapsDeserializeNullValues',
              documentation: 'Deserializes null values in maps',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body:
                  '{\n    "sparseStringMap": {\n        "foo": null\n    }\n}',
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
          outputSerializers: const [
            _NullOperationInputOutputAwsJson11Serializer()
          ]);
    },
  );
  _i1.test(
    'AwsJson11ListsDeserializeNull (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NullOperation(),
          testCase: const _i2.HttpResponseTestCase(
              id: 'AwsJson11ListsDeserializeNull',
              documentation: 'Deserializes null values in lists',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          outputSerializers: const [
            _NullOperationInputOutputAwsJson11Serializer()
          ]);
    },
  );
}

class _NullOperationInputOutputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i5.NullOperationInputOutput> {
  const _NullOperationInputOutputAwsJson11Serializer()
      : super('NullOperationInputOutput');

  @override
  Iterable<Type> get types => const [_i5.NullOperationInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i5.NullOperationInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.NullOperationInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'sparseStringList':
          if (value != null) {
            result.sparseStringList.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltList, [FullType.nullable(String)]))
                as _i6.BuiltList<String?>));
          }
          break;
        case 'sparseStringMap':
          if (value != null) {
            result.sparseStringMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType.nullable(String)
                ])) as _i6.BuiltMap<String, String?>));
          }
          break;
        case 'string':
          if (value != null) {
            result.string = (serializers.deserialize(value,
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
