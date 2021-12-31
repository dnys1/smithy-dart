// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transform_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransformResponse _$TransformResponseFromJson(Map<String, dynamic> json) =>
    TransformResponse(
      ast: json['ast'] as String,
      errors: json['errors'] as String,
    );

Map<String, dynamic> _$TransformResponseToJson(TransformResponse instance) =>
    <String, dynamic>{
      'ast': instance.ast,
      'errors': instance.errors,
    };
