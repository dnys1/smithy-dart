// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.common.endpoint_resolver;

import 'package:smithy_aws/smithy_aws.dart' as _i1;

final _partitions = [
  _i1.Partition(
      id: 'aws',
      regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'apigateway.{region}.amazonaws.com',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'af-south-1': _i1.EndpointDefinition(),
        'ap-east-1': _i1.EndpointDefinition(),
        'ap-northeast-1': _i1.EndpointDefinition(),
        'ap-northeast-2': _i1.EndpointDefinition(),
        'ap-northeast-3': _i1.EndpointDefinition(),
        'ap-south-1': _i1.EndpointDefinition(),
        'ap-southeast-1': _i1.EndpointDefinition(),
        'ap-southeast-2': _i1.EndpointDefinition(),
        'ca-central-1': _i1.EndpointDefinition(),
        'eu-central-1': _i1.EndpointDefinition(),
        'eu-north-1': _i1.EndpointDefinition(),
        'eu-south-1': _i1.EndpointDefinition(),
        'eu-west-1': _i1.EndpointDefinition(),
        'eu-west-2': _i1.EndpointDefinition(),
        'eu-west-3': _i1.EndpointDefinition(),
        'me-south-1': _i1.EndpointDefinition(),
        'sa-east-1': _i1.EndpointDefinition(),
        'us-east-1': _i1.EndpointDefinition(),
        'us-east-2': _i1.EndpointDefinition(),
        'us-west-1': _i1.EndpointDefinition(),
        'us-west-2': _i1.EndpointDefinition()
      }),
  _i1.Partition(
      id: 'aws-cn',
      regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'apigateway.{region}.amazonaws.com.cn',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'cn-north-1': _i1.EndpointDefinition(),
        'cn-northwest-1': _i1.EndpointDefinition()
      }),
  _i1.Partition(
      id: 'aws-iso',
      regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'apigateway.{region}.c2s.ic.gov',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {'us-iso-east-1': _i1.EndpointDefinition()}),
  _i1.Partition(
      id: 'aws-iso-b',
      regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'apigateway.{region}.sc2s.sgov.gov',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {}),
  _i1.Partition(
      id: 'aws-us-gov',
      regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'apigateway.{region}.amazonaws.com',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'us-gov-east-1': _i1.EndpointDefinition(),
        'us-gov-west-1': _i1.EndpointDefinition()
      })
];
final _i1.AWSEndpointResolver endpointResolver =
    _i1.AWSEndpointResolver(_partitions);
const String sdkId = 'API Gateway';
