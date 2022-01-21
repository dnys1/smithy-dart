// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_prefix_headers_in_response_test;

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_output.dart'
    as _i6;
import 'package:rest_json1/src/rest_json/operation/http_prefix_headers_in_response.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('HttpPrefixHeadersResponse (restJson1)', () async {
    await _i2.httpResponseTest(
        operation: _i3.HttpPrefixHeadersInResponseOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'HttpPrefixHeadersResponse',
            documentation: '(de)serializes all response headers',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body: null,
            bodyMediaType: null,
            params: {
              'prefixHeaders': {'X-Foo': 'Foo', 'Hello': 'Hello'}
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Foo': 'Foo', 'Hello': 'Hello'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 200),
        outputSerializer:
            const _HttpPrefixHeadersInResponseOutputRestJson1Serializer());
  });
}

class _HttpPrefixHeadersInResponseInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpPrefixHeadersInResponseInput> {
  const _HttpPrefixHeadersInResponseInputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseInput');

  @override
  Iterable<Type> get types => const [_i5.HttpPrefixHeadersInResponseInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpPrefixHeadersInResponseInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i5.HttpPrefixHeadersInResponseInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class _HttpPrefixHeadersInResponseOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i6.HttpPrefixHeadersInResponseOutput> {
  const _HttpPrefixHeadersInResponseOutputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseOutput');

  @override
  Iterable<Type> get types => const [_i6.HttpPrefixHeadersInResponseOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.HttpPrefixHeadersInResponseOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.HttpPrefixHeadersInResponseOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'prefixHeaders':
          if (value != null) {
            result.prefixHeaders.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i7.BuiltMap, [FullType(String), FullType(String)]))
                as _i7.BuiltMap<String, String>));
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
