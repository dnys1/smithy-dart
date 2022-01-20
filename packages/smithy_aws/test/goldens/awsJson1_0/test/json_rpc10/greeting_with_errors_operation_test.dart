// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.greeting_with_errors_test;

import 'package:aws_json1_0/src/json_rpc10/model/complex_error.dart' as _i6;
import 'package:aws_json1_0/src/json_rpc10/model/complex_nested_error_data.dart'
    as _i7;
import 'package:aws_json1_0/src/json_rpc10/model/foo_error.dart' as _i8;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_input.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_with_errors_output.dart'
    as _i5;
import 'package:aws_json1_0/src/json_rpc10/model/invalid_greeting.dart' as _i9;
import 'package:aws_json1_0/src/json_rpc10/operation/greeting_with_errors.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10ComplexError',
          documentation: 'Parses a complex error with no message member',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#ComplexError",\n    "TopLevel": "Top level",\n    "Nested": {\n        "Foo": "bar"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'TopLevel': 'Top level',
            'Nested': {'Foo': 'bar'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400),
      errorSerializer: const _ComplexErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10EmptyComplexError',
          documentation: 'Parses a complex error with an empty body',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "__type": "aws.protocoltests.json10#ComplexError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400),
      errorSerializer: const _ComplexErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorType',
          documentation:
              'Serializes the X-Amzn-ErrorType header. For an example service, see Amazon EKS.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorTypeWithUri',
          documentation:
              'Some X-Amzn-Errortype headers contain URLs. Clients need to split the URL on \':\' and take only the first half of the string. For example, \'ValidationException:http://internal.amazon.com/coral/com.amazon.coral.validate/\'\nis to be interpreted as \'ValidationException\'.\n\nFor an example service see Amazon Polly.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
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
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorTypeWithUriAndNamespace',
          documentation:
              'X-Amzn-Errortype might contain a URL and a namespace. Client should extract only the shape name. This is a pathalogical case that might not actually happen in any deployed AWS service.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Amzn-Errortype':
                'aws.protocoltests.json10#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCode',
          documentation:
              'This example uses the \'code\' property in the output rather than X-Amzn-Errortype. Some services do this though it\'s preferable to send the X-Amzn-Errortype. Client implementations must first check for the X-Amzn-Errortype and then check for a top-level \'code\' property.\n\nFor example service see Amazon S3 Glacier.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "code": "FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCodeAndNamespace',
          documentation:
              'Some services serialize errors using code, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "code": "aws.protocoltests.json10#FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCodeUriAndNamespace',
          documentation:
              'Some services serialize errors using code, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body:
              '{\n    "code": "aws.protocoltests.json10#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderType',
          documentation: 'Some services serialize errors using __type.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "__type": "FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderTypeAndNamespace',
          documentation:
              'Some services serialize errors using __type, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{\n    "__type": "aws.protocoltests.json10#FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderTypeUriAndNamespace',
          documentation:
              'Some services serialize errors using __type, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i1.AppliesTo.client,
          code: 500),
      errorSerializer: const _FooErrorAwsJson10Serializer());
  _i1.httpErrorResponseTest(
      operation: _i2.GreetingWithErrorsOperation(),
      testCase: const _i1.HttpResponseTestCase(
          id: 'AwsJson10InvalidGreetingError',
          documentation: 'Parses simple JSON errors',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#InvalidGreeting",\n    "Message": "Hi"\n}',
          bodyMediaType: 'application/json',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400),
      errorSerializer: const _InvalidGreetingAwsJson10Serializer());
}

class _GreetingWithErrorsInputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i4.GreetingWithErrorsInput> {
  const _GreetingWithErrorsInputAwsJson10Serializer()
      : super('GreetingWithErrorsInput');

  @override
  Iterable<Type> get types =>
      const [_i4.GreetingWithErrorsInput, _i4.GreetingWithErrorsInputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i4.GreetingWithErrorsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.GreetingWithErrorsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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

class _GreetingWithErrorsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i5.GreetingWithErrorsOutput> {
  const _GreetingWithErrorsOutputAwsJson10Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types =>
      const [_i5.GreetingWithErrorsOutput, _i5.GreetingWithErrorsOutputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i5.GreetingWithErrorsOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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

class _ComplexErrorAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i6.ComplexError> {
  const _ComplexErrorAwsJson10Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [_i6.ComplexError, _i6.ComplexErrorPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i6.ComplexError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nested':
          result.nested.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i7.ComplexNestedErrorData))
              as _i7.ComplexNestedErrorData));
          break;
        case 'TopLevel':
          result.topLevel = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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

class _FooErrorAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i8.FooError> {
  const _FooErrorAwsJson10Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [_i8.FooError, _i8.FooErrorPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
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

class _InvalidGreetingAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<_i9.InvalidGreeting> {
  const _InvalidGreetingAwsJson10Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types =>
      const [_i9.InvalidGreeting, _i9.InvalidGreetingPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i9.InvalidGreeting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i9.InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
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
