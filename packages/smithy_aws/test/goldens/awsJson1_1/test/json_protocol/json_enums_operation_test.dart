// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.json_enums_test;

import 'package:aws_json1_1/src/json_protocol/model/foo_enum.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/json_enums_input_output.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/json_enums.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.JsonEnumsOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11Enums',
          documentation: 'Serializes simple scalar properties',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "fooEnum1": "Foo",\n    "fooEnum2": "0",\n    "fooEnum3": "1",\n    "fooEnumList": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumSet": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumMap": {\n        "hi": "Foo",\n        "zero": "0"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': ['Foo', '0'],
            'fooEnumSet': ['Foo', '0'],
            'fooEnumMap': {'hi': 'Foo', 'zero': '0'}
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
      inputSerializer: const _JsonEnumsInputOutputAwsJson11Serializer());
  _i1.httpResponseTest(
      operation: _i2.JsonEnumsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson11Enums',
          documentation: 'Serializes simple scalar properties',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
          authScheme: null,
          body:
              '{\n    "fooEnum1": "Foo",\n    "fooEnum2": "0",\n    "fooEnum3": "1",\n    "fooEnumList": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumSet": [\n        "Foo",\n        "0"\n    ],\n    "fooEnumMap": {\n        "hi": "Foo",\n        "zero": "0"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': ['Foo', '0'],
            'fooEnumSet': ['Foo', '0'],
            'fooEnumMap': {'hi': 'Foo', 'zero': '0'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200),
      outputSerializer: const _JsonEnumsInputOutputAwsJson11Serializer());
}

class _JsonEnumsInputOutputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<_i4.JsonEnumsInputOutput> {
  const _JsonEnumsInputOutputAwsJson11Serializer()
      : super('JsonEnumsInputOutput');

  @override
  Iterable<Type> get types =>
      const [_i4.JsonEnumsInputOutput, _i4.JsonEnumsInputOutputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i4.JsonEnumsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.JsonEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fooEnum1':
          result.fooEnum1 = (serializers.deserialize(value,
              specifiedType: const FullType(_i5.FooEnum)) as _i5.FooEnum?);
          break;
        case 'fooEnum2':
          result.fooEnum2 = (serializers.deserialize(value,
              specifiedType: const FullType(_i5.FooEnum)) as _i5.FooEnum?);
          break;
        case 'fooEnum3':
          result.fooEnum3 = (serializers.deserialize(value,
              specifiedType: const FullType(_i5.FooEnum)) as _i5.FooEnum?);
          break;
        case 'fooEnumList':
          result.fooEnumList.replace((serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i6.BuiltList, [FullType(_i5.FooEnum)]))
              as _i6.BuiltList<_i5.FooEnum>));
          break;
        case 'fooEnumMap':
          result.fooEnumMap.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i6.BuiltMap, [FullType(String), FullType(_i5.FooEnum)]))
              as _i6.BuiltMap<String, _i5.FooEnum>));
          break;
        case 'fooEnumSet':
          result.fooEnumSet.replace((serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i6.BuiltSet, [FullType(_i5.FooEnum)]))
              as _i6.BuiltSet<_i5.FooEnum>));
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
