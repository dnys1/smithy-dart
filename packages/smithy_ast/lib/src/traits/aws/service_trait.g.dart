// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceTrait _$ServiceTraitFromJson(Map<String, dynamic> json) => ServiceTrait(
      cloudFormationName: json['cloudFormationName'] as String,
      arnNamespace: json['arnNamespace'] as String,
      sdkId: json['sdkId'] as String,
      cloudTrailEventSource: json['cloudTrailEventSource'] as String,
      endpointPrefix: json['endpointPrefix'] as String,
    );

Map<String, dynamic> _$ServiceTraitToJson(ServiceTrait instance) =>
    <String, dynamic>{
      'cloudFormationName': instance.cloudFormationName,
      'arnNamespace': instance.arnNamespace,
      'sdkId': instance.sdkId,
      'cloudTrailEventSource': instance.cloudTrailEventSource,
      'endpointPrefix': instance.endpointPrefix,
    };
