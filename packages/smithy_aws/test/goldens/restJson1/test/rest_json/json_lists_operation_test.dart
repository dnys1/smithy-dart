// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.json_lists_test;

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/foo_enum.dart' as _i7;
import 'package:rest_json1/src/rest_json/model/json_lists_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/model/structure_list_member.dart'
    as _i8;
import 'package:rest_json1/src/rest_json/operation/json_lists.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonLists (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonListsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonLists',
            documentation: 'Serializes JSON lists',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "stringList": [\n        "foo",\n        "bar"\n    ],\n    "stringSet": [\n        "foo",\n        "bar"\n    ],\n    "integerList": [\n        1,\n        2\n    ],\n    "booleanList": [\n        true,\n        false\n    ],\n    "timestampList": [\n        1398796238,\n        1398796238\n    ],\n    "enumList": [\n        "Foo",\n        "0"\n    ],\n    "nestedStringList": [\n        [\n            "foo",\n            "bar"\n        ],\n        [\n            "baz",\n            "qux"\n        ]\n    ],\n    "myStructureList": [\n        {\n            "value": "1",\n            "other": "2"\n        },\n        {\n            "value": "3",\n            "other": "4"\n        }\n    ]\n}',
            bodyMediaType: 'application/json',
            params: {
              'stringList': ['foo', 'bar'],
              'stringSet': ['foo', 'bar'],
              'integerList': [1, 2],
              'booleanList': [true, false],
              'timestampList': [1398796238, 1398796238],
              'enumList': ['Foo', '0'],
              'nestedStringList': [
                ['foo', 'bar'],
                ['baz', 'qux']
              ],
              'structureList': [
                {'a': '1', 'b': '2'},
                {'a': '3', 'b': '4'}
              ]
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'PUT',
            uri: '/JsonLists',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonListsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonListsEmpty (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonListsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonListsEmpty',
            documentation: 'Serializes empty JSON lists',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "stringList": []\n}',
            bodyMediaType: 'application/json',
            params: {'stringList': []},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'PUT',
            uri: '/JsonLists',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonListsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonListsSerializeNull (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonListsOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonListsSerializeNull',
            documentation: 'Serializes null values in lists',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "sparseStringList": [\n        null,\n        "hi"\n    ]\n}',
            bodyMediaType: 'application/json',
            params: {
              'sparseStringList': [null, 'hi']
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'PUT',
            uri: '/JsonLists',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer: const _JsonListsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonLists (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonListsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonLists',
            documentation: 'Serializes JSON lists',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "stringList": [\n        "foo",\n        "bar"\n    ],\n    "stringSet": [\n        "foo",\n        "bar"\n    ],\n    "integerList": [\n        1,\n        2\n    ],\n    "booleanList": [\n        true,\n        false\n    ],\n    "timestampList": [\n        1398796238,\n        1398796238\n    ],\n    "enumList": [\n        "Foo",\n        "0"\n    ],\n    "nestedStringList": [\n        [\n            "foo",\n            "bar"\n        ],\n        [\n            "baz",\n            "qux"\n        ]\n    ],\n    "myStructureList": [\n        {\n            "value": "1",\n            "other": "2"\n        },\n        {\n            "value": "3",\n            "other": "4"\n        }\n    ]\n}',
            bodyMediaType: 'application/json',
            params: {
              'stringList': ['foo', 'bar'],
              'stringSet': ['foo', 'bar'],
              'integerList': [1, 2],
              'booleanList': [true, false],
              'timestampList': [1398796238, 1398796238],
              'enumList': ['Foo', '0'],
              'nestedStringList': [
                ['foo', 'bar'],
                ['baz', 'qux']
              ],
              'structureList': [
                {'a': '1', 'b': '2'},
                {'a': '3', 'b': '4'}
              ]
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer: const _JsonListsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonListsEmpty (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonListsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonListsEmpty',
            documentation: 'Serializes empty JSON lists',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "stringList": []\n}',
            bodyMediaType: 'application/json',
            params: {'stringList': []},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer: const _JsonListsInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonListsSerializeNull (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.JsonListsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonListsSerializeNull',
            documentation: 'Serializes null values in sparse lists',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "sparseStringList": [\n        null,\n        "hi"\n    ]\n}',
            bodyMediaType: 'application/json',
            params: {
              'sparseStringList': [null, 'hi']
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer: const _JsonListsInputOutputRestJson1Serializer());
  });
}

class _JsonListsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonListsInputOutput> {
  const _JsonListsInputOutputRestJson1Serializer()
      : super('JsonListsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonListsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.JsonListsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.JsonListsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'booleanList':
          if (value != null) {
            result.booleanList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(bool)]))
                as _i6.BuiltList<bool>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(_i7.FooEnum)]))
                as _i6.BuiltList<_i7.FooEnum>));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(int)]))
                as _i6.BuiltList<int>));
          }
          break;
        case 'nestedStringList':
          if (value != null) {
            result.nestedStringList.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltList, [
                  FullType(_i6.BuiltList, [FullType(String)])
                ])) as _i6.BuiltList<_i6.BuiltList<String>>));
          }
          break;
        case 'sparseStringList':
          if (value != null) {
            result.sparseStringList.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltList, [FullType.nullable(String)]))
                as _i6.BuiltList<String?>));
          }
          break;
        case 'stringList':
          if (value != null) {
            result.stringList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(String)]))
                as _i6.BuiltList<String>));
          }
          break;
        case 'stringSet':
          if (value != null) {
            result.stringSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltSet, [FullType(String)]))
                as _i6.BuiltSet<String>));
          }
          break;
        case 'structureList':
          if (value != null) {
            result.structureList.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltList, [FullType(_i8.StructureListMember)]))
                as _i6.BuiltList<_i8.StructureListMember>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(DateTime)]))
                as _i6.BuiltList<DateTime>));
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
