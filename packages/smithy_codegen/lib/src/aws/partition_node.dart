import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_aws/smithy_aws.dart';

part 'partition_node.g.dart';

const _fromJson = JsonSerializable(
  createToJson: false,
  anyMap: true,
);

@_fromJson
class PartitionNode with AWSEquatable<PartitionNode> {
  const PartitionNode({
    required this.defaults,
    required this.dnsSuffix,
    required this.partition,
    required this.partitionName,
    required this.regionRegex,
    this.services = const {},
  });

  factory PartitionNode.fromJson(Map<String, Object?> json) =>
      _$PartitionNodeFromJson(json);

  final EndpointDefinition defaults;
  final String dnsSuffix;
  final String partition;
  final String partitionName;
  final String regionRegex;
  final Map<String, PartitionNodeServiceConfiguration> services;

  Partition toPartition(String endpointPrefix) {
    final service =
        services[endpointPrefix] ?? const PartitionNodeServiceConfiguration();
    final mergedDefaults = EndpointDefinition.merge(defaults, service.defaults);
    final partitionEndpoint =
        service.isRegionalized ? null : service.partitionEndpoint;
    return Partition(
      id: partition,
      defaults: EndpointDefinition(
        hostname: mergedDefaults.hostname!
            .replaceAll('{service}', endpointPrefix)
            .replaceAll('{dnsSuffix}', dnsSuffix),
        protocols: mergedDefaults.protocols,
        credentialScope: mergedDefaults.credentialScope,
        signatureVersions: mergedDefaults.signatureVersions,
      ),
      regionRegex: RegExp(regionRegex),
      partitionEndpoint: partitionEndpoint,
      endpoints: service.endpoints,
      isRegionalized: service.isRegionalized,
    );
  }

  @override
  List<Object?> get props => [
        defaults,
        dnsSuffix,
        partition,
        partitionName,
        regionRegex,
        services,
      ];
}

@_fromJson
class PartitionNodeRegion with AWSEquatable<PartitionNodeRegion> {
  const PartitionNodeRegion(this.description);

  factory PartitionNodeRegion.fromJson(Map<String, Object?> json) =>
      _$PartitionNodeRegionFromJson(json);

  final String description;

  @override
  List<Object?> get props => [description];
}

@_fromJson
class PartitionNodeDefaults with AWSEquatable<PartitionNodeDefaults> {
  const PartitionNodeDefaults({
    this.hostname,
    this.protocols = const [],
    this.signatureVersions = const [],
  });

  factory PartitionNodeDefaults.fromJson(Map<String, Object?> json) =>
      _$PartitionNodeDefaultsFromJson(json);

  final String? hostname;
  final List<String> protocols;
  final List<String> signatureVersions;

  PartitionNodeDefaults merge(PartitionNodeDefaults other) {
    return PartitionNodeDefaults(
      hostname: hostname ?? other.hostname,
      protocols: {
        ...protocols,
        ...other.protocols,
      }.toList(),
      signatureVersions: {
        ...signatureVersions,
        ...other.signatureVersions,
      }.toList(),
    );
  }

  PartitionNodeDefaults copyWith({
    String? hostname,
    List<String>? protocols,
    List<String>? signatureVersions,
  }) {
    return PartitionNodeDefaults(
      hostname: hostname ?? this.hostname,
      protocols: protocols ?? this.protocols,
      signatureVersions: signatureVersions ?? this.signatureVersions,
    );
  }

  @override
  List<Object?> get props => [hostname, protocols, signatureVersions];
}

@_fromJson
class PartitionNodeServiceConfiguration
    with AWSEquatable<PartitionNodeServiceConfiguration> {
  const PartitionNodeServiceConfiguration({
    this.defaults = const EndpointDefinition(),
    this.endpoints = const {},
    this.partitionEndpoint,
    this.isRegionalized = true,
  });

  factory PartitionNodeServiceConfiguration.fromJson(
          Map<String, Object?> json) =>
      _$PartitionNodeServiceConfigurationFromJson(json);

  final EndpointDefinition defaults;
  final Map<String, EndpointDefinition> endpoints;
  final String? partitionEndpoint;
  final bool isRegionalized;

  @override
  List<Object?> get props => [
        defaults,
        endpoints,
        partitionEndpoint,
        isRegionalized,
      ];
}
