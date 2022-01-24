// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EndpointDefinition _$EndpointDefinitionFromJson(Map<String, dynamic> json) =>
    EndpointDefinition(
      hostname: json['hostname'] as String?,
      protocols: (json['protocols'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      credentialScope: json['credentialScope'] == null
          ? null
          : CredentialScope.fromJson(
              json['credentialScope'] as Map<String, dynamic>),
      signatureVersions: (json['signatureVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EndpointDefinitionToJson(EndpointDefinition instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'protocols': instance.protocols,
      'credentialScope': instance.credentialScope,
      'signatureVersions': instance.signatureVersions,
    };
