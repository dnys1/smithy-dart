import 'dart:async';

import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import 'dummy_operation.dart';

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
      final op = DummyHttpOperation(retryer);
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
