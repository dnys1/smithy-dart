// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:built_value/serializer.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import 'serializers.dart';

final _dummyHttpRequest = AWSStreamedHttpRequest(
  method: HttpMethod.get,
  host: '',
  path: '',
  body: const Stream.empty(),
);

/// Performs an HTTP response test for [operation] for a test case from an
/// [HttpResponseTestsTrait].
Future<void> httpResponseTest<InputPayload, Input, OutputPayload, Output>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpResponseTestCase testCase,
  List<SmithySerializer>? outputSerializers,
}) async {
  final protocol = operation.resolveProtocol(
    useProtocol: testCase.protocol,
  );
  final serializers = (protocol.serializers.toBuilder()
        ..addAll([
          ...testSerializers,
          ...?outputSerializers,
        ]))
      .build();
  final expectedOutput = serializers.deserialize(
    testCase.params,
    specifiedType: FullType(Output),
  ) as Output;

  final client = MockClient((request) async {
    return Response(
      testCase.body ?? '',
      testCase.code,
      headers: testCase.headers,
    );
  });
  final output = await operation.innerSend(
    client: HttpClient.v1(Uri(), baseClient: client),
    httpRequest: _dummyHttpRequest,
    successCode: 200,
    protocol: protocol,
  );

  expect(output, equals(expectedOutput));
}

/// Performs an HTTP error response test for [operation] for a test case from an
/// [HttpResponseTestsTrait].
Future<void> httpErrorResponseTest<InputPayload, Input, OutputPayload, Output,
    ExpectedError extends SmithyException>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpResponseTestCase testCase,
  List<SmithySerializer>? errorSerializers,
}) async {
  final protocol = operation.resolveProtocol(
    useProtocol: testCase.protocol,
  );
  final serializers = (protocol.serializers.toBuilder()
        ..addAll([
          ...testSerializers,
          ...?errorSerializers,
        ]))
      .build();
  final expectedError = serializers.deserialize(
    testCase.params,
    specifiedType: FullType(ExpectedError),
  ) as ExpectedError;

  final client = MockClient((request) async {
    return Response(
      testCase.body ?? '',
      testCase.code,
      headers: testCase.headers,
    );
  });
  try {
    await operation.innerSend(
      client: HttpClient.v1(Uri(), baseClient: client),
      httpRequest: _dummyHttpRequest,
      successCode: 200,
      protocol: protocol,
    );
    fail('Operation should throw');
  } on Exception catch (error) {
    expect(error, isA<ExpectedError>());
    expect(error, equals(expectedError));
  }
}
