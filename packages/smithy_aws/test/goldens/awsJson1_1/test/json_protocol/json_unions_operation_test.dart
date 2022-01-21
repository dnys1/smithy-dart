// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.json_unions_test;

import 'package:aws_json1_1/src/json_protocol/model/my_union.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/union_input_output.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/json_unions.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeStringUnionValue',
          documentation: 'Serializes a string union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeBooleanUnionValue',
          documentation: 'Serializes a boolean union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeNumberUnionValue',
          documentation: 'Serializes a number union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeBlobUnionValue',
          documentation: 'Serializes a blob union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeTimestampUnionValue',
          documentation: 'Serializes a timestamp union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "timestampValue": 1398796238\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'timestampValue': 1398796238}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeEnumUnionValue',
          documentation: 'Serializes an enum union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeListUnionValue',
          documentation: 'Serializes a list union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "listValue": ["foo", "bar"]\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'listValue': ['foo', 'bar']
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeMapUnionValue',
          documentation: 'Serializes a map union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "mapValue": {\n            "foo": "bar",\n            "spam": "eggs"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'mapValue': {'foo': 'bar', 'spam': 'eggs'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11SerializeStructureUnionValue',
          documentation: 'Serializes a structure union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "structureValue": {\n            "hi": "hello"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'structureValue': {'hi': 'hello'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.JsonUnions'
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
      inputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeStringUnionValue',
          documentation: 'Deserializes a string union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeBooleanUnionValue',
          documentation: 'Deserializes a boolean union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeNumberUnionValue',
          documentation: 'Deserializes a number union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeBlobUnionValue',
          documentation: 'Deserializes a blob union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeTimestampUnionValue',
          documentation: 'Deserializes a timestamp union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "timestampValue": 1398796238\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'timestampValue': 1398796238}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeEnumUnionValue',
          documentation: 'Deserializes an enum union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeListUnionValue',
          documentation: 'Deserializes a list union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "listValue": ["foo", "bar"]\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'listValue': ['foo', 'bar']
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeMapUnionValue',
          documentation: 'Deserializes a map union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "mapValue": {\n            "foo": "bar",\n            "spam": "eggs"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'mapValue': {'foo': 'bar', 'spam': 'eggs'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11DeserializeStructureUnionValue',
          documentation: 'Deserializes a structure union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "contents": {\n        "structureValue": {\n            "hi": "hello"\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {
              'structureValue': {'hi': 'hello'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _UnionInputOutputAwsJson11Serializer());
}

class _UnionInputOutputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<_i4.UnionInputOutput> {
  const _UnionInputOutputAwsJson11Serializer() : super('UnionInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i4.UnionInputOutput, _i4.UnionInputOutputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i4.UnionInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.UnionInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contents':
          result.contents = (serializers.deserialize(value,
              specifiedType: const FullType(_i5.MyUnion)) as _i5.MyUnion?);
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
