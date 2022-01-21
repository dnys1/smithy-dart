// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_payload_with_structure_test;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/http_payload_with_structure_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/model/nested_payload.dart' as _i6;
import 'package:rest_json1/src/rest_json/operation/http_payload_with_structure.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestJsonHttpPayloadWithStructure (restJson1)', () async {
    await _i2.httpRequestTest(
        operation: _i3.HttpPayloadWithStructureOperation(),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonHttpPayloadWithStructure',
            documentation: 'Serializes a structure in the payload',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "greeting": "hello",\n    "name": "Phreddy"\n}',
            bodyMediaType: 'application/json',
            params: {
              'nested': {'greeting': 'hello', 'name': 'Phreddy'}
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: ['Content-Length'],
            tags: [],
            appliesTo: null,
            method: 'PUT',
            uri: '/HttpPayloadWithStructure',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializer:
            const _HttpPayloadWithStructureInputOutputRestJson1Serializer());
  });
  _i1.test('RestJsonHttpPayloadWithStructure (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.HttpPayloadWithStructureOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'RestJsonHttpPayloadWithStructure',
            documentation: 'Serializes a structure in the payload',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: '{\n    "greeting": "hello",\n    "name": "Phreddy"\n}',
            bodyMediaType: 'application/json',
            params: {
              'nested': {'greeting': 'hello', 'name': 'Phreddy'}
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
            const _HttpPayloadWithStructureInputOutputRestJson1Serializer());
  });
}

class _HttpPayloadWithStructureInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpPayloadWithStructureInputOutput> {
  const _HttpPayloadWithStructureInputOutputRestJson1Serializer()
      : super('HttpPayloadWithStructureInputOutput');

  @override
  Iterable<Type> get types => const [_i5.HttpPayloadWithStructureInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpPayloadWithStructureInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpPayloadWithStructureInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.NestedPayload))
                as _i6.NestedPayload));
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
