// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.recursive_shapes_test;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output_nested1.dart'
    as _i6;
import 'package:rest_json1/src/rest_json/operation/recursive_shapes.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonRecursiveShapes (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.RecursiveShapesOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonRecursiveShapes',
            documentation: 'Serializes recursive structures',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "nested": {\n        "foo": "Foo1",\n        "nested": {\n            "bar": "Bar1",\n            "recursiveMember": {\n                "foo": "Foo2",\n                "nested": {\n                    "bar": "Bar2"\n                }\n            }\n        }\n    }\n}',
            bodyMediaType: 'application/json',
            params: {
              'nested': {
                'foo': 'Foo1',
                'nested': {
                  'bar': 'Bar1',
                  'recursiveMember': {
                    'foo': 'Foo2',
                    'nested': {'bar': 'Bar2'}
                  }
                }
              }
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'PUT',
            uri: '/RecursiveShapes',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _RecursiveShapesInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonRecursiveShapes (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.RecursiveShapesOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonRecursiveShapes',
            documentation: 'Serializes recursive structures',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "nested": {\n        "foo": "Foo1",\n        "nested": {\n            "bar": "Bar1",\n            "recursiveMember": {\n                "foo": "Foo2",\n                "nested": {\n                    "bar": "Bar2"\n                }\n            }\n        }\n    }\n}',
            bodyMediaType: 'application/json',
            params: {
              'nested': {
                'foo': 'Foo1',
                'nested': {
                  'bar': 'Bar1',
                  'recursiveMember': {
                    'foo': 'Foo2',
                    'nested': {'bar': 'Bar2'}
                  }
                }
              }
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _RecursiveShapesInputOutputRestJson1Serializer());
  });
}

class _RecursiveShapesInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.RecursiveShapesInputOutput> {
  const _RecursiveShapesInputOutputRestJson1Serializer()
      : super('RecursiveShapesInputOutput');

  @override
  Iterable<Type> get types => const [_i5.RecursiveShapesInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.RecursiveShapesInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.RecursiveShapesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.RecursiveShapesInputOutputNested1))
                as _i6.RecursiveShapesInputOutputNested1));
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
