// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:aws_common/src/http/aws_http_response.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

void main() {
  group('AWSRetryer', () {
    test('uses x-amz-retry-after header', () async {
      final httpClient = HttpClient.v1(
        baseClient: MockClient((request) async {
          return Response('{}', 500, headers: {
            'x-amz-retry-after': '500',
          });
        }),
      );
      final retryer = AWSRetryer(
        initialRetryTokens: 500,
      );
      final op = _DummyHttpOperation(retryer);
      try {
        await runZoned(
          () => op.run(const Unit(), client: httpClient),
          zoneValues: {
            AWSConfigValue.maxAttempts: 1,
          },
        );
        fail('Operation should fail');
      } on Exception catch (_) {}
      expect(retryer.retryQuota, equals(495));
    });
  });
}

class _DummyHttpOperation extends HttpOperation<Unit, Unit, Unit, Unit> {
  _DummyHttpOperation(this.retryer);

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
          _DummySmithyException.id,
          ErrorKind.server,
          _DummySmithyException,
          statusCode: 500,
          builder: _DummySmithyException.fromResponse,
        )
      ];

  @override
  Iterable<HttpProtocol<Unit, Unit, Unit, Unit>> get protocols => [
        GenericJsonProtocol(
          serializers: const [
            _DummySmithyExceptionSerializer(),
          ],
        ),
      ];

  @override
  int successCode([Unit? output]) => 200;
}

class _DummySmithyException implements SmithyException {
  const _DummySmithyException();

  factory _DummySmithyException.fromResponse(
    _DummySmithyException payload,
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
  RetryConfig? get retryConfig => null;

  @override
  ShapeId get shapeId => id;
}

class _DummySmithyExceptionSerializer
    implements StructuredSmithySerializer<_DummySmithyException> {
  const _DummySmithyExceptionSerializer();

  @override
  _DummySmithyException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return const _DummySmithyException();
  }

  @override
  Iterable<Object?> serialize(
      Serializers serializers, _DummySmithyException object,
      {FullType specifiedType = FullType.unspecified}) {
    return const [];
  }

  @override
  Iterable<ShapeId> get supportedProtocols =>
      const [GenericJsonProtocolDefinitionTrait.id];

  @override
  Iterable<Type> get types => const [_DummySmithyException];

  @override
  String get wireName => 'DummySmithyException';
}
