// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partition_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartitionNode _$PartitionNodeFromJson(Map json) => PartitionNode(
      defaults: EndpointDefinition.fromJson(
          Map<String, Object?>.from(json['defaults'] as Map)),
      dnsSuffix: json['dnsSuffix'] as String,
      partition: json['partition'] as String,
      partitionName: json['partitionName'] as String,
      regionRegex: json['regionRegex'] as String,
      services: (json['services'] as Map?)?.map(
            (k, e) => MapEntry(
                k as String,
                PartitionNodeServiceConfiguration.fromJson(
                    Map<String, Object?>.from(e as Map))),
          ) ??
          const {},
    );

PartitionNodeRegion _$PartitionNodeRegionFromJson(Map json) =>
    PartitionNodeRegion(
      json['description'] as String,
    );

PartitionNodeDefaults _$PartitionNodeDefaultsFromJson(Map json) =>
    PartitionNodeDefaults(
      hostname: json['hostname'] as String?,
      protocols: (json['protocols'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      signatureVersions: (json['signatureVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

PartitionNodeServiceConfiguration _$PartitionNodeServiceConfigurationFromJson(
        Map json) =>
    PartitionNodeServiceConfiguration(
      defaults: json['defaults'] == null
          ? const EndpointDefinition()
          : EndpointDefinition.fromJson(
              Map<String, Object?>.from(json['defaults'] as Map)),
      endpoints: (json['endpoints'] as Map?)?.map(
            (k, e) => MapEntry(
                k as String,
                EndpointDefinition.fromJson(
                    Map<String, Object?>.from(e as Map))),
          ) ??
          const {},
      partitionEndpoint: json['partitionEndpoint'] as String?,
      isRegionalized: json['isRegionalized'] as bool? ?? true,
    );
