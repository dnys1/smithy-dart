// Generated code. DO NOT MODIFY.

library http_response_tests_model.test.operation.say_goodbye_test;

import 'package:built_value/serializer.dart';
import 'package:http_response_tests_model/src/test/model/invalid_greeting.dart'
    as _i7;
import 'package:http_response_tests_model/src/test/model/say_goodbye_input.dart'
    as _i5;
import 'package:http_response_tests_model/src/test/model/say_goodbye_output.dart'
    as _i6;
import 'package:http_response_tests_model/src/test/operation/say_goodbye.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'say_goodbye (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.SayGoodbyeOperation(
              baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'say_goodbye',
              documentation: null,
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body: null,
              bodyMediaType: null,
              params: {'farewell': 'Bye'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Farewell': 'Bye', 'Content-Length': '0'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [_SayGoodbyeOutputAwsJson11Serializer()]);
    },
  );
  _i1.test(
    'invalid_greeting (error)',
    () async {
      await _i2.httpErrorResponseTest<
              _i5.SayGoodbyeInput,
              _i5.SayGoodbyeInput,
              _i6.SayGoodbyeOutputPayload,
              _i6.SayGoodbyeOutput,
              _i7.InvalidGreeting>(
          operation: _i3.SayGoodbyeOperation(
              baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'invalid_greeting',
              documentation: null,
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body: '{"message": "Hi"}',
              bodyMediaType: 'application/json',
              params: {'foo': 'baz', 'message': 'Hi'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'X-Foo': 'baz'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 400),
          errorSerializers: const [_InvalidGreetingAwsJson11Serializer()]);
    },
  );
}

class _SayGoodbyeInputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i5.SayGoodbyeInput> {
  const _SayGoodbyeInputAwsJson11Serializer() : super('SayGoodbyeInput');

  @override
  Iterable<Type> get types => const [_i5.SayGoodbyeInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i5.SayGoodbyeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i5.SayGoodbyeInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class _SayGoodbyeOutputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i6.SayGoodbyeOutput> {
  const _SayGoodbyeOutputAwsJson11Serializer() : super('SayGoodbyeOutput');

  @override
  Iterable<Type> get types => const [_i6.SayGoodbyeOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i6.SayGoodbyeOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.SayGoodbyeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'farewell':
          if (value != null) {
            result.farewell = (serializers.deserialize(value,
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

class _InvalidGreetingAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i7.InvalidGreeting> {
  const _InvalidGreetingAwsJson11Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [_i7.InvalidGreeting];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i7.InvalidGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i7.InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
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
