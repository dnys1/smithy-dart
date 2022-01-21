// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.greeting_with_errors_test;

import 'package:aws_json1_1/src/json_protocol/model/complex_error.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/model/complex_nested_error_data.dart'
    as _i7;
import 'package:aws_json1_1/src/json_protocol/model/foo_error.dart' as _i8;
import 'package:aws_json1_1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i5;
import 'package:aws_json1_1/src/json_protocol/model/invalid_greeting.dart'
    as _i9;
import 'package:aws_json1_1/src/json_protocol/operation/greeting_with_errors.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('AwsJson11ComplexError (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11ComplexError',
            documentation: 'Parses a complex error with no message member',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body:
                '{\n    "__type": "ComplexError",\n    "TopLevel": "Top level",\n    "Nested": {\n        "Foo": "bar"\n    }\n}',
            bodyMediaType: 'application/json',
            params: {
              'TopLevel': 'Top level',
              'Nested': {'Foo': 'bar'}
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 400),
        errorSerializer: const _ComplexErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11EmptyComplexError (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11EmptyComplexError',
            documentation: null,
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{\n    "__type": "ComplexError"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 400),
        errorSerializer: const _ComplexErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorUsingXAmznErrorType (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorUsingXAmznErrorType',
            documentation:
                'Serializes the X-Amzn-ErrorType header. For an example service, see Amazon EKS.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: null,
            bodyMediaType: null,
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'X-Amzn-Errortype': 'FooError'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorUsingXAmznErrorTypeWithUri (awsJson1_1)',
      () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorUsingXAmznErrorTypeWithUri',
            documentation:
                'Some X-Amzn-Errortype headers contain URLs. Clients need to split the URL on \':\' and take only the first half of the string. For example, \'ValidationException:http://internal.amazon.com/coral/com.amazon.coral.validate/\'\nis to be interpreted as \'ValidationException\'.\n\nFor an example service see Amazon Polly.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: null,
            bodyMediaType: null,
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Amzn-Errortype':
                  'FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/'
            },
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test(
      'AwsJson11FooErrorUsingXAmznErrorTypeWithUriAndNamespace (awsJson1_1)',
      () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorUsingXAmznErrorTypeWithUriAndNamespace',
            documentation:
                'X-Amzn-Errortype might contain a URL and a namespace. Client should extract only the shape name. This is a pathalogical case that might not actually happen in any deployed AWS service.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: null,
            bodyMediaType: null,
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {
              'X-Amzn-Errortype':
                  'aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/'
            },
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorUsingCode (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorUsingCode',
            documentation:
                'This example uses the \'code\' property in the output rather than X-Amzn-Errortype. Some services do this though it\'s preferable to send the X-Amzn-Errortype. Client implementations must first check for the X-Amzn-Errortype and then check for a top-level \'code\' property.\n\nFor example service see Amazon S3 Glacier.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{\n    "code": "FooError"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorUsingCodeAndNamespace (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorUsingCodeAndNamespace',
            documentation:
                'Some services serialize errors using code, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{\n    "code": "aws.protocoltests.restjson#FooError"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorUsingCodeUriAndNamespace (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorUsingCodeUriAndNamespace',
            documentation:
                'Some services serialize errors using code, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body:
                '{\n    "code": "aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorWithDunderType (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorWithDunderType',
            documentation: 'Some services serialize errors using __type.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{\n    "__type": "FooError"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorWithDunderTypeAndNamespace (awsJson1_1)',
      () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorWithDunderTypeAndNamespace',
            documentation:
                'Some services serialize errors using __type, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{\n    "__type": "aws.protocoltests.restjson#FooError"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11FooErrorWithDunderTypeUriAndNamespace (awsJson1_1)',
      () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11FooErrorWithDunderTypeUriAndNamespace',
            documentation:
                'Some services serialize errors using __type, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body:
                '{\n    "__type": "aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/"\n}',
            bodyMediaType: 'application/json',
            params: {},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: _i2.AppliesTo.client,
            code: 500),
        errorSerializer: const _FooErrorAwsJson11Serializer());
  });
  _i1.test('AwsJson11InvalidGreetingError (awsJson1_1)', () async {
    await _i2.httpErrorResponseTest(
        operation: _i3.GreetingWithErrorsOperation(),
        testCase: const _i2.HttpResponseTestCase(
            id: 'AwsJson11InvalidGreetingError',
            documentation: 'Parses simple JSON errors',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
            authScheme: null,
            body: '{\n    "__type": "InvalidGreeting",\n    "Message": "Hi"\n}',
            bodyMediaType: 'application/json',
            params: {'Message': 'Hi'},
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/x-amz-json-1.1'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            code: 400),
        errorSerializer: const _InvalidGreetingAwsJson11Serializer());
  });
}

class _GreetingWithErrorsOutputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i5.GreetingWithErrorsOutput> {
  const _GreetingWithErrorsOutputAwsJson11Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.GreetingWithErrorsOutput, _i5.GreetingWithErrorsOutputPayload];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i5.GreetingWithErrorsOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.GreetingWithErrorsOutputBuilder();
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

class _ComplexErrorAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i6.ComplexError> {
  const _ComplexErrorAwsJson11Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [_i6.ComplexError, _i6.ComplexErrorPayload];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i6.ComplexError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i7.ComplexNestedErrorData))
                as _i7.ComplexNestedErrorData));
          }
          break;
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(value,
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

class _FooErrorAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i8.FooError> {
  const _FooErrorAwsJson11Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [_i8.FooError, _i8.FooErrorPayload];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i8.FooError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i8.FooErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class _InvalidGreetingAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<_i9.InvalidGreeting> {
  const _InvalidGreetingAwsJson11Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types =>
      const [_i9.InvalidGreeting, _i9.InvalidGreetingPayload];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i9.InvalidGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i9.InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
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
