// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.common.endpoint_resolver;

import 'package:meta/meta.dart' as _i2;
import 'package:smithy_aws/smithy_aws.dart' as _i1;

final _partitions = [
  _i1.Partition(
      id: 'aws',
      regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'restxml.{region}.amazonaws.com',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {}),
  _i1.Partition(
      id: 'aws-cn',
      regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'restxml.{region}.amazonaws.com.cn',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {}),
  _i1.Partition(
      id: 'aws-iso',
      regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'restxml.{region}.c2s.ic.gov',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {}),
  _i1.Partition(
      id: 'aws-iso-b',
      regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
      partitionEndpoint: null,
      isRegionalized: true,
      defaults: const _i1.EndpointDefinition(
          hostname: 'restxml.{region}.sc2s.sgov.gov',
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
          hostname: 'restxml.{region}.amazonaws.com',
          protocols: ['https'],
          signatureVersions: ['v4'],
          credentialScope: _i1.CredentialScope()),
      endpoints: const {})
];
@_i2.internal
final _i1.AWSEndpointResolver endpointResolver =
    _i1.AWSEndpointResolver(_partitions);
@_i2.internal
const String sdkId = 'Rest Xml Protocol';