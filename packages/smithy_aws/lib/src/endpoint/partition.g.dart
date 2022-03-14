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
              ?.map((e) => $enumDecode(_$SignatureVersionEnumMap, e))
              .toList() ??
          const [],
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) =>
                  EndpointDefinitionVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EndpointDefinitionToJson(EndpointDefinition instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'protocols': instance.protocols,
      'credentialScope': instance.credentialScope,
      'signatureVersions': instance.signatureVersions
          .map((e) => _$SignatureVersionEnumMap[e])
          .toList(),
      'variants': instance.variants,
    };

const _$SignatureVersionEnumMap = {
  SignatureVersion.v2: 'v2',
  SignatureVersion.v4: 'v4',
  SignatureVersion.s3: 's3',
  SignatureVersion.s3v4: 's3v4',
  SignatureVersion.v3: 'v3',
  SignatureVersion.v3https: 'v3https',
};

EndpointDefinitionVariant _$EndpointDefinitionVariantFromJson(
        Map<String, dynamic> json) =>
    EndpointDefinitionVariant(
      dnsSuffix: json['dnsSuffix'] as String?,
      hostname: json['hostname'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EndpointDefinitionVariantToJson(
        EndpointDefinitionVariant instance) =>
    <String, dynamic>{
      'dnsSuffix': instance.dnsSuffix,
      'hostname': instance.hostname,
      'tags': instance.tags,
    };
