// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.omits_null_serializes_empty_string_test;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/omits_null_serializes_empty_string_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json/operation/omits_null_serializes_empty_string.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonOmitsNullQuery (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.OmitsNullSerializesEmptyStringOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonOmitsNullQuery',
              documentation: 'Omits null query values',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'nullValue': null},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              method: 'GET',
              uri: '/OmitsNullSerializesEmptyString',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            _OmitsNullSerializesEmptyStringInputRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonSerializesEmptyQueryValue (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.OmitsNullSerializesEmptyStringOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonSerializesEmptyQueryValue',
              documentation: 'Serializes empty query strings',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'emptyString': ''},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'GET',
              uri: '/OmitsNullSerializesEmptyString',
              host: null,
              resolvedHost: null,
              queryParams: ['Empty='],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            _OmitsNullSerializesEmptyStringInputRestJson1Serializer()
          ]);
    },
  );
}

class _OmitsNullSerializesEmptyStringInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.OmitsNullSerializesEmptyStringInput> {
  const _OmitsNullSerializesEmptyStringInputRestJson1Serializer()
      : super('OmitsNullSerializesEmptyStringInput');

  @override
  Iterable<Type> get types => const [_i5.OmitsNullSerializesEmptyStringInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.OmitsNullSerializesEmptyStringInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.OmitsNullSerializesEmptyStringInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'emptyString':
          if (value != null) {
            result.emptyString = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'nullValue':
          if (value != null) {
            result.nullValue = (serializers.deserialize(value,
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
