// Generated code. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1.rest_json_protocol.test.query_precedence_operation_test_test;

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/query_precedence_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/query_precedence_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonQueryPrecedence (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.QueryPrecedenceOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonQueryPrecedence',
              documentation: 'Prefer named query parameters when serializing',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {
                'foo': 'named',
                'baz': {'bar': 'fromMap', 'qux': 'alsoFromMap'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              method: 'POST',
              uri: '/Precedence',
              host: null,
              resolvedHost: null,
              queryParams: ['bar=named', 'qux=alsoFromMap'],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [_QueryPrecedenceInputRestJson1Serializer()]);
    },
  );
}

class _QueryPrecedenceInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.QueryPrecedenceInput> {
  const _QueryPrecedenceInputRestJson1Serializer()
      : super('QueryPrecedenceInput');

  @override
  Iterable<Type> get types => const [_i5.QueryPrecedenceInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.QueryPrecedenceInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.QueryPrecedenceInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'baz':
          if (value != null) {
            result.baz.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(String)]))
                as _i6.BuiltMap<String, String>));
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
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
