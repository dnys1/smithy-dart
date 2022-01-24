import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:smithy_aws/src/endpoint/aws_endpoint.dart';
import 'package:smithy_aws/src/endpoint/credential_scope.dart';
import 'package:smithy_aws/src/endpoint/endpoint.dart';

const _defaultProtocol = 'https';
const _defaultSigner = 'v4';
const _protocolPriority = ['https', 'http'];
const _signerPriority = ['v4'];

final _defaultPartitions = <Partition>[
  Partition(
    id: 'aws',
    regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
    partitionEndpoint: '',
    isRegionalized: true,
    defaults: const EndpointDefinition(
      hostname: 'example.{region}.amazonaws.com',
      protocols: ['https'],
      signatureVersions: ['v4'],
    ),
    endpoints: const {},
  ),
  Partition(
    id: 'aws-cn',
    regionRegex: RegExp(r'^cn\\-\\w+\\-\\d+$'),
    partitionEndpoint: '',
    isRegionalized: true,
    defaults: const EndpointDefinition(
      hostname: 'example.{region}.amazonaws.com.cn',
      protocols: ['https'],
      signatureVersions: ['v4'],
    ),
    endpoints: const {},
  ),
  Partition(
    id: 'aws-iso',
    regionRegex: RegExp(r'^us\\-iso\\-\\w+\\-\\d+$'),
    partitionEndpoint: '',
    isRegionalized: true,
    defaults: const EndpointDefinition(
      hostname: 'example.{region}.c2s.ic.gov',
      protocols: ['https'],
      signatureVersions: ['v4'],
    ),
    endpoints: const {},
  ),
  Partition(
    id: 'aws-iso-b',
    regionRegex: RegExp(r'^us\\-isob\\-\\w+\\-\\d+$'),
    partitionEndpoint: '',
    isRegionalized: true,
    defaults: const EndpointDefinition(
      hostname: 'example.{region}.sc2s.sgov.gov',
      protocols: ['https'],
      signatureVersions: ['v4'],
    ),
    endpoints: const {},
  ),
  Partition(
    id: 'aws-us-gov',
    regionRegex: RegExp(r'^us\\-gov\\-\\w+\\-\\d+$'),
    partitionEndpoint: '',
    isRegionalized: true,
    defaults: const EndpointDefinition(
      hostname: 'example.{region}.amazonaws.com',
      protocols: ['https'],
      signatureVersions: ['v4'],
    ),
    endpoints: const {},
  ),
];

@internal
AWSEndpoint resolveEndpoint(String region) {
  return _defaultPartitions
      .firstWhere(
        (p) => p.canResolveEndpoint(region),
        orElse: () => _defaultPartitions.first,
      )
      .resolveEndpoint(region);
}

/// A description of a single service endpoint.
@internal
class EndpointDefinition {
  const EndpointDefinition({
    this.hostname,
    this.protocols = const [],
    this.credentialScope,
    this.signatureVersions = const [],
  });

  /// A URI template used to resolve the hostname of the endpoint. Templates are
  /// of the form {name}. e.g. {service}.{region}.amazonaws.com
  ///
  /// Variables that may be substituted:
  /// - service - the service name
  /// - region - the region name
  /// - dnsSuffix - the dns suffix of the partition
  final String? hostname;

  /// A list of supported protocols for the endpoint (e.g. "https", "http", etc)
  final List<String> protocols;

  /// A custom signing constraint for the endpoint
  final CredentialScope? credentialScope;

  /// A list of allowable signature versions for the endpoint (e.g. "v4", "v2",
  /// "v3", "s3v3", etc)
  final List<String> signatureVersions;

  AWSEndpoint resolve(String region, EndpointDefinition defaults) {
    final merged = merge(this, defaults);
    ArgumentError.checkNotNull(merged.hostname, 'hostname');

    final hostname = merged.hostname!.replaceAll('{region}', region);
    final sortedProtocols = [...merged.protocols]..sort((a, b) {
        final aIdx = _protocolPriority.indexOf(a);
        final bIdx = _protocolPriority.indexOf(b);
        return (aIdx > 0 && bIdx > 0)
            ? aIdx.compareTo(bIdx)
            : aIdx > 0
                ? -1
                : 1;
      });
    final protocol = sortedProtocols.first;
    final signingName = merged.credentialScope?.service;
    final signingRegion = merged.credentialScope?.region ?? region;

    final uri = Uri(scheme: protocol, host: hostname);
    return AWSEndpoint(
      endpoint: Endpoint(uri: uri),
      credentialScope: CredentialScope(
        service: signingName,
        region: signingRegion,
      ),
    );
  }

  static EndpointDefinition merge(
    EndpointDefinition into,
    EndpointDefinition from,
  ) {
    final hostname = into.hostname ?? from.hostname;
    final protocols = {
      ...into.protocols,
      ...from.protocols,
    }.toList();
    final region = into.credentialScope?.region ?? from.credentialScope?.region;
    final service =
        into.credentialScope?.service ?? from.credentialScope?.service;
    final credentialScope = CredentialScope(region: region, service: service);
    final signatureVersions = {
      ...into.signatureVersions,
      ...from.signatureVersions,
    }.toList();
    return EndpointDefinition(
      hostname: hostname,
      protocols: protocols,
      credentialScope: credentialScope,
      signatureVersions: signatureVersions,
    );
  }
}

/// A partition describes logical slice(s) of the AWS fabric.
@internal
class Partition {
  const Partition({
    required this.id,
    required this.regionRegex,
    required this.partitionEndpoint,
    required this.isRegionalized,
    required this.defaults,
    required this.endpoints,
  });

  /// The partition name/id e.g. "aws"
  final String id;

  /// The regular expression that specified the pattern that region names in the
  /// endpoint adhere to.
  final RegExp regionRegex;

  /// Endpoint that works across all regions or if [isRegionalized] is false.
  final String partitionEndpoint;

  /// Flag indicating whether or not the service is regionalized in the
  /// partition. Some services have only a single, partition-global endpoint
  /// (e.g. CloudFront).
  final bool isRegionalized;

  /// Default endpoint values for the partition. Some or all of the defaults
  /// specified may be superseded by an entry in [endpoints].
  final EndpointDefinition defaults;

  /// Map of endpoint names to their definitions.
  final Map<String, EndpointDefinition> endpoints;

  /// Tests if this partition is able to resolve an endpoint for the given
  /// region.
  bool canResolveEndpoint(String region) =>
      endpoints.containsKey(region) || regionRegex.hasMatch(region);

  AWSEndpoint resolveEndpoint(String region) {
    final resolvedRegion = region.isEmpty && partitionEndpoint.isNotEmpty
        ? partitionEndpoint
        : region;
    final endpointDefinition = endpoints[resolvedRegion] ??
        (!isRegionalized ? endpoints[partitionEndpoint] : null) ??
        const EndpointDefinition();
    return endpointDefinition.resolve(region, defaults);
  }
}
