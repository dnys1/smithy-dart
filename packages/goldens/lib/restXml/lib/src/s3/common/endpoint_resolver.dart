// Generated code. DO NOT MODIFY.

library rest_xml.s3.common.endpoint_resolver;

import 'package:meta/meta.dart' as _i2;
import 'package:smithy_aws/smithy_aws.dart' as _i1;

final _partitions = [
  _i1.Partition(
      id: 'aws',
      regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 's3.{region}.amazonaws.com',
          protocols: ['https', 'http'],
          signatureVersions: ['v4', 's3v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'accesspoint-af-south-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.af-south-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-east-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-east-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-northeast-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-northeast-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-northeast-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-northeast-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-northeast-3': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-northeast-3.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-south-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-south-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-southeast-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-southeast-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ap-southeast-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ap-southeast-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-ca-central-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.ca-central-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-eu-central-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.eu-central-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-eu-north-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.eu-north-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-eu-south-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.eu-south-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-eu-west-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.eu-west-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-eu-west-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.eu-west-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-eu-west-3': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.eu-west-3.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-me-south-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.me-south-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-sa-east-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.sa-east-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-us-east-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.us-east-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-us-east-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.us-east-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-us-west-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.us-west-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-us-west-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.us-west-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'af-south-1': _i1.EndpointDefinition(),
        'ap-east-1': _i1.EndpointDefinition(),
        'ap-northeast-1': _i1.EndpointDefinition(
            hostname: 's3.ap-northeast-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'ap-northeast-2': _i1.EndpointDefinition(),
        'ap-northeast-3': _i1.EndpointDefinition(),
        'ap-south-1': _i1.EndpointDefinition(),
        'ap-southeast-1': _i1.EndpointDefinition(
            hostname: 's3.ap-southeast-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'ap-southeast-2': _i1.EndpointDefinition(
            hostname: 's3.ap-southeast-2.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'aws-global': _i1.EndpointDefinition(
            hostname: 's3.amazonaws.com',
            signatureVersions: ['s3', 's3v4'],
            credentialScope: _i1.CredentialScope(region: 'us-east-1')),
        'ca-central-1': _i1.EndpointDefinition(),
        'eu-central-1': _i1.EndpointDefinition(),
        'eu-north-1': _i1.EndpointDefinition(),
        'eu-south-1': _i1.EndpointDefinition(),
        'eu-west-1': _i1.EndpointDefinition(
            hostname: 's3.eu-west-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'eu-west-2': _i1.EndpointDefinition(),
        'eu-west-3': _i1.EndpointDefinition(),
        'fips-accesspoint-ca-central-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.ca-central-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-accesspoint-us-east-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.us-east-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-accesspoint-us-east-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.us-east-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-accesspoint-us-west-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.us-west-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-accesspoint-us-west-2': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.us-west-2.amazonaws.com',
            signatureVersions: ['s3v4']),
        'me-south-1': _i1.EndpointDefinition(),
        's3-external-1': _i1.EndpointDefinition(
            hostname: 's3-external-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4'],
            credentialScope: _i1.CredentialScope(region: 'us-east-1')),
        'sa-east-1': _i1.EndpointDefinition(
            hostname: 's3.sa-east-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'us-east-1': _i1.EndpointDefinition(
            hostname: 's3.us-east-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'us-east-2': _i1.EndpointDefinition(),
        'us-west-1': _i1.EndpointDefinition(
            hostname: 's3.us-west-1.amazonaws.com',
            signatureVersions: ['s3', 's3v4']),
        'us-west-2': _i1.EndpointDefinition(
            hostname: 's3.us-west-2.amazonaws.com',
            signatureVersions: ['s3', 's3v4'])
      }),
  _i1.Partition(
      id: 'aws-cn',
      regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 's3.{region}.amazonaws.com.cn',
          protocols: ['https', 'http'],
          signatureVersions: ['v4', 's3v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'accesspoint-cn-north-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.cn-north-1.amazonaws.com.cn',
            signatureVersions: ['s3v4']),
        'accesspoint-cn-northwest-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.cn-northwest-1.amazonaws.com.cn',
            signatureVersions: ['s3v4']),
        'cn-north-1': _i1.EndpointDefinition(),
        'cn-northwest-1': _i1.EndpointDefinition()
      }),
  _i1.Partition(
      id: 'aws-iso',
      regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 's3.{region}.c2s.ic.gov',
          protocols: ['https'],
          signatureVersions: ['v4', 's3v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'us-iso-east-1': _i1.EndpointDefinition(
            protocols: ['http', 'https'], signatureVersions: ['s3v4'])
      }),
  _i1.Partition(
      id: 'aws-iso-b',
      regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 's3.{region}.sc2s.sgov.gov',
          protocols: ['https', 'http'],
          signatureVersions: ['v4', 's3v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {'us-isob-east-1': _i1.EndpointDefinition()}),
  _i1.Partition(
      id: 'aws-us-gov',
      regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 's3.{region}.amazonaws.com',
          protocols: ['https'],
          signatureVersions: ['v4', 's3', 's3v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {
        'accesspoint-us-gov-east-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.us-gov-east-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'accesspoint-us-gov-west-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint.us-gov-west-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-accesspoint-us-gov-east-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.us-gov-east-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-accesspoint-us-gov-west-1': _i1.EndpointDefinition(
            hostname: 's3-accesspoint-fips.us-gov-west-1.amazonaws.com',
            signatureVersions: ['s3v4']),
        'fips-us-gov-west-1': _i1.EndpointDefinition(
            hostname: 's3-fips.us-gov-west-1.amazonaws.com',
            credentialScope: _i1.CredentialScope(region: 'us-gov-west-1')),
        'us-gov-east-1': _i1.EndpointDefinition(
            hostname: 's3.us-gov-east-1.amazonaws.com',
            protocols: ['http', 'https']),
        'us-gov-west-1': _i1.EndpointDefinition(
            hostname: 's3.us-gov-west-1.amazonaws.com',
            protocols: ['http', 'https'])
      })
];
@_i2.internal
final _i1.AWSEndpointResolver endpointResolver =
    _i1.AWSEndpointResolver(_partitions);
@_i2.internal
const String sdkId = 'S3';
