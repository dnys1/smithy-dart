import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:smithy_codegen/src/aws/partition_node.dart';
import 'package:test/test.dart';

import 'test_case.dart';

part 'endpoints_test.g.dart';

@JsonLiteral('test-cases.json')
List<Map<String, Object?>> get _testCases => _$_testCasesJsonLiteral;

late final List<TestCase> testCases =
    _testCases.map(TestCase.fromJson).toList();

@JsonLiteral('endpoints.json')
Map<String, Object?> get _endpoints => _$_endpointsJsonLiteral;

late final Map<String, PartitionNode> endpoints = Map.fromEntries(
  (_endpoints['partitions'] as List).map((Object? el) {
    final config = PartitionNode.fromJson((el as Map).cast());
    return MapEntry(config.partition, config);
  }),
);

void main() {
  group('Endpoints', () {
    for (var i = 0; i < testCases.length; i++) {
      test('Test Case $i', () {
        final testCase = testCases[i];
        final partitions =
            endpoints.values.map((node) => node[testCase.service]).toList();
        final endpointResolver = AWSEndpointResolver(partitions);
        expect(
          endpointResolver
              .resolve(testCase.service, testCase.region)
              .endpoint
              .uri
              .host,
          equals(testCase.endpoint),
        );
      });
    }

    // Error cases
    test('Warning: Deprecated Endpoint', () {
      const testCase = TestCase(
        service: 'multi-variant-service',
        region: 'af-south-1',
        fips: false,
        dualStack: false,
      );
    });

    test('Error: FIPS not supported', () {
      const testCase = TestCase(
        service: 'some-service',
        region: 'us-iso-east-1',
        fips: true,
        dualStack: false,
      );
    });

    test('Error: DualStack not supported', () {
      const testCase = TestCase(
        service: 'some-service',
        region: 'us-iso-east-1',
        fips: false,
        dualStack: true,
      );
    });
  });
}
