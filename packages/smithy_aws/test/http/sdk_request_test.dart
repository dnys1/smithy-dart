import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'dummy_operation.dart';

void main() {
  group('WithSdkRequest', () {
    test('w/ max attempts', () async {
      var attempt = 1;
      final headers = <Map<String, String>>[];
      final httpClient = HttpClient.v1(
        baseClient: MockClient((request) async {
          headers.add(request.headers);
          if (attempt > 1) {
            return Response('{}', 200);
          }
          attempt++;
          return Response('{}', 500);
        }),
      );
      final retryer = AWSRetryer();
      final op = DummyHttpOperation(retryer);
      const maxAttempts = 5;
      await runZoned(
        () => op.run(const Unit(), client: httpClient),
        zoneValues: {
          #retryable: true,
          AWSConfigValue.maxAttempts: maxAttempts,
        },
      );
      expect(headers, hasLength(2));
      expect(
        headers[0],
        containsPair(AWSHeaders.sdkRequest, 'attempt=1; max=$maxAttempts'),
      );
      expect(
        headers[1],
        containsPair(AWSHeaders.sdkRequest, 'attempt=2; max=$maxAttempts'),
      );
    });
  });

  test('WithSdkInvocationId', () async {
    var attempt = 1;
    final headers = <Map<String, String>>[];
    final httpClient = HttpClient.v1(
      baseClient: MockClient((request) async {
        headers.add(request.headers);
        if (attempt > 1) {
          return Response('{}', 200);
        }
        attempt++;
        return Response('{}', 500);
      }),
    );
    final retryer = AWSRetryer();
    final op = DummyHttpOperation(retryer);
    await runZoned(
      () => op.run(const Unit(), client: httpClient),
      zoneValues: {
        #retryable: true,
        AWSHeaders.sdkInvocationId: const Uuid().v4(),
      },
    );
    expect(headers, hasLength(2));
    expect(headers[0], contains(AWSHeaders.sdkInvocationId));
    expect(headers[1], contains(AWSHeaders.sdkInvocationId));
    expect(
      headers[0][AWSHeaders.sdkInvocationId],
      headers[1][AWSHeaders.sdkInvocationId],
    );
  });
}
