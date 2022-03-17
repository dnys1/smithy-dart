// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/http/interceptors/with_sdk_invocation.dart';
import 'package:smithy_aws/src/http/interceptors/with_sdk_request.dart';

class DummyHttpOperation extends HttpOperation<Unit, Unit, Unit, Unit> {
  DummyHttpOperation(this.retryer);

  @override
  final Retryer retryer;

  @override
  Uri get baseUri => Uri.parse('https://example.com');

  @override
  Unit buildOutput(Unit payload, AWSStreamedHttpResponse response) => payload;

  @override
  HttpRequest buildRequest(Unit input) => HttpRequest((b) => b
    ..method = 'GET'
    ..path = '/');

  @override
  List<SmithyError> get errorTypes => const [
        SmithyError(
          DummySmithyException.id,
          ErrorKind.server,
          DummySmithyException,
          statusCode: 500,
          builder: DummySmithyException.fromResponse,
        )
      ];

  @override
  Iterable<HttpProtocol<Unit, Unit, Unit, Unit>> get protocols => [
        GenericJsonProtocol(
          serializers: const [
            _DummySmithyExceptionSerializer(),
          ],
          requestInterceptors: const [
            WithSdkInvocationId(),
            WithSdkRequest(),
          ],
        ),
      ];

  @override
  int successCode([Unit? output]) => 200;
}

class DummySmithyException implements SmithyException {
  const DummySmithyException();

  factory DummySmithyException.fromResponse(
    DummySmithyException payload,
    AWSStreamedHttpResponse response,
  ) =>
      payload;

  static const id = ShapeId(
    namespace: 'com.example',
    shape: 'DummySmithyException',
  );

  @override
  String? get message => null;

  @override
  RetryConfig? get retryConfig =>
      (Zone.current[#retryable] as bool? ?? false) ? const RetryConfig() : null;

  @override
  ShapeId get shapeId => id;
}

class _DummySmithyExceptionSerializer
    implements StructuredSmithySerializer<DummySmithyException> {
  const _DummySmithyExceptionSerializer();

  @override
  DummySmithyException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return const DummySmithyException();
  }

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DummySmithyException object,
      {FullType specifiedType = FullType.unspecified}) {
    return const [];
  }

  @override
  Iterable<ShapeId> get supportedProtocols =>
      const [GenericJsonProtocolDefinitionTrait.id];

  @override
  Iterable<Type> get types => const [DummySmithyException];

  @override
  String get wireName => 'DummySmithyException';
}
