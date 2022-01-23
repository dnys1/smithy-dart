// Generated code. DO NOT MODIFY.

library http_request_tests_model.test.operation.say_hello_test;

import 'package:built_value/serializer.dart';
import 'package:http_request_tests_model/src/test/model/say_hello_input.dart'
    as _i5;
import 'package:http_request_tests_model/src/test/operation/say_hello.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'say_hello (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.SayHelloOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'say_hello',
              documentation: null,
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body: '{"name": "Teddy"}',
              bodyMediaType: 'application/json',
              params: {
                'hostLabel': 'foo',
                'greeting': 'Hi',
                'name': 'Teddy',
                'query': 'Hello there'
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Greeting': 'Hi'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/',
              host: 'example.com',
              resolvedHost: 'foo.prefix.example.com',
              queryParams: ['Hi=Hello%20there'],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [_SayHelloInputAwsJson11Serializer()]);
    },
  );
}

class _SayHelloInputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i5.SayHelloInput> {
  const _SayHelloInputAwsJson11Serializer() : super('SayHelloInput');

  @override
  Iterable<Type> get types => const [_i5.SayHelloInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i5.SayHelloInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.SayHelloInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'hostLabel':
          result.hostLabel = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'query':
          if (value != null) {
            result.query = (serializers.deserialize(value,
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
