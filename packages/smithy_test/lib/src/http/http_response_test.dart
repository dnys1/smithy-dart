// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:built_value/serializer.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_test/smithy_test.dart';

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
  final serializers = buildSerializers(
    protocol.serializers,
    outputSerializers,
  );
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
    client: HttpClient.v1(baseClient: client),
    httpRequest: _dummyHttpRequest,
    protocol: protocol,
  );

  if (output is AWSEquatable && expectedOutput is AWSEquatable) {
    expect(output.props.where((el) => el is! Stream),
        deepEquals(expectedOutput.props.where((el) => el is! Stream)));
    final outputStreams = output.props.whereType<Stream>().toList();
    final expectedOutputStreams =
        expectedOutput.props.whereType<Stream>().toList();
    expect(outputStreams.length, equals(expectedOutputStreams.length));
    for (var i = 0; i < outputStreams.length; i++) {
      final outputStream = outputStreams[i];
      final expectedStream = expectedOutputStreams[i];

      Object? output = await outputStream.toList();
      if (output is List<Iterable>) {
        output = output.expand((el) => el);
      }
      Object? expected = await expectedStream.toList();
      if (expected is List<Iterable>) {
        expected = expected.expand((el) => el);
      }

      expect(output, deepEquals(expected));
    }
  } else {
    expect(output, equals(expectedOutput));
  }
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
  final serializers = buildSerializers(
    protocol.serializers,
    errorSerializers,
  );
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
      client: HttpClient.v1(baseClient: client),
      httpRequest: _dummyHttpRequest,
      protocol: protocol,
    );
    fail('Operation should throw');
  } on Exception catch (error) {
    expect(error, isA<ExpectedError>());
    expect(error, equals(expectedError));
  }
}
