// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpTrait _$HttpTraitFromJson(Map<String, dynamic> json) => HttpTrait(
      method: json['method'] as String,
      uri: UriPattern.fromJson(json['uri'] as Map<String, dynamic>),
      code: json['code'] as int? ?? 200,
    );

Map<String, dynamic> _$HttpTraitToJson(HttpTrait instance) => <String, dynamic>{
      'method': instance.method,
      'uri': instance.uri,
      'code': instance.code,
    };
