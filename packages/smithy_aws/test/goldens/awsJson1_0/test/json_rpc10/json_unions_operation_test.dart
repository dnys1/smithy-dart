// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.json_unions_test;

import 'package:aws_json1_0/src/json_rpc10/model/json_unions_input.dart' as _i4;
import 'package:aws_json1_0/src/json_rpc10/model/my_union.dart' as _i5;
import 'package:aws_json1_0/src/json_rpc10/operation/json_unions.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeStringUnionValue',
          documentation: 'Serializes a string union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "contents": {\n        "stringValue": "foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'stringValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeBooleanUnionValue',
          documentation: 'Serializes a boolean union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "contents": {\n        "booleanValue": true\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'booleanValue': true}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeNumberUnionValue',
          documentation: 'Serializes a number union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "contents": {\n        "numberValue": 1\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'numberValue': 1}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeBlobUnionValue',
          documentation: 'Serializes a blob union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "contents": {\n        "blobValue": "Zm9v"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'blobValue': 'foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeTimestampUnionValue',
          documentation: 'Serializes a timestamp union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeEnumUnionValue',
          documentation: 'Serializes an enum union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "contents": {\n        "enumValue": "Foo"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'contents': {'enumValue': 'Foo'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeListUnionValue',
          documentation: 'Serializes a list union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeMapUnionValue',
          documentation: 'Serializes a map union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
  _i1.httpRequestTest(
      operation: _i2.JsonUnionsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10SerializeStructureUnionValue',
          documentation: 'Serializes a structure union value',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
            'Content-Type': 'application/x-amz-json-1.0',
            'X-Amz-Target': 'JsonRpc10.JsonUnions'
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
      inputSerializer: const _JsonUnionsInputAwsJson10Serializer());
}

class _JsonUnionsInputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i4.JsonUnionsInput> {
  const _JsonUnionsInputAwsJson10Serializer() : super('JsonUnionsInput');

  @override
  Iterable<Type> get types =>
      const [_i4.JsonUnionsInput, _i4.JsonUnionsInputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i4.JsonUnionsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.JsonUnionsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
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
